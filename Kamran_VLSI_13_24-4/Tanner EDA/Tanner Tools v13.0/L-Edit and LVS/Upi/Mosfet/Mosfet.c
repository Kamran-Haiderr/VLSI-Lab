//*************************************************************************
//* FILE: Mosfet.c
//* DESCRIPTION: N-channel Transistor
//*************************************************************************

#if !defined(MAKE_DLL)

// Declare the module for the interpreter.
module Mosfet
{

#endif

//*************************************************************************
//* INCLUDE FILES
//*************************************************************************
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "ldata.h"     // Main UPI header.

//*************************************************************************
//* PROTOTYPES
//*************************************************************************
LLayer CheckLayer(LFile pTDBFile, const char* szLayerName, const char* szLayerTitle);

//*************************************************************************
//* CONSTANTS
//*************************************************************************

//*************************************************************************
// Function Name    : Mosfet
// Parameters       : None.
// Description      : N-channel Transistor
// Returns          : Nothing.
//*************************************************************************
//  Revision History
//   03/11/2003 - NJW - Created function.
//*************************************************************************
void Mosfet(void)
{
	static char szActiveContactLayer[256] = "Active Contact";
	static char szActiveLayer[256] = "Active";
	static char szSelectLayer[256] = "N Select";
	static char szPolyLayer[256] = "Poly";
	static char szMetal1Layer[256] = "Metal1";
	static double dWidth = 20.0;
	static double dLength = 2.0;

	LCell pCell = LCell_GetVisible(); 		// The current cell.
	if(NotAssigned(pCell))
	{
		LDialog_AlertBox("ERROR:  Could not find a Visible Cell.");
		return;
	}
	
	LFile pTDBFile = LCell_GetFile(pCell);		// The TDB current file.
	if(NotAssigned(pTDBFile))
	{
		LDialog_AlertBox("ERROR:  Could not get the TDB file from the Visible Cell.");
		return;
	}

	LDialogItem Dialog_Items[7];
	strcpy(Dialog_Items[0].prompt, "Channel Width:");
	strcpy(Dialog_Items[1].prompt, "Channel Length:");
	strcpy(Dialog_Items[2].prompt, "Active Contact Layer:");
	strcpy(Dialog_Items[3].prompt, "Active Layer:");
	strcpy(Dialog_Items[4].prompt, "Select Layer:");
	strcpy(Dialog_Items[5].prompt, "Polysilicon Layer:");
	strcpy(Dialog_Items[6].prompt, "Metal1 Layer:");

	sprintf(Dialog_Items[0].value, "%lf", dWidth);
	sprintf(Dialog_Items[1].value, "%lf", dLength);
	strcpy(Dialog_Items[2].value, szActiveContactLayer);
	strcpy(Dialog_Items[3].value, szActiveLayer);
	strcpy(Dialog_Items[4].value, szSelectLayer);
	strcpy(Dialog_Items[5].value, szPolyLayer);
	strcpy(Dialog_Items[6].value, szMetal1Layer);
	
	if(!LDialog_MultiLineInputBox("MOSFET Parameters", Dialog_Items, 7))
	{
		return;
	}

	LPoint ptCenter = LCursor_GetPositionEx99(1, 1, "Please select the center of the mosfet.");

	// Check if the user canceled
	if((ptCenter.x > WORLD_MAX) || (ptCenter.y > WORLD_MAX))
		return;

	// Do some error checking.
	LLayer pLayerActiveContact = CheckLayer(pTDBFile, Dialog_Items[2].value, "Active Contact");
	if(NotAssigned(pLayerActiveContact)) return;
	strcpy(szActiveContactLayer, Dialog_Items[2].value);

	LLayer pLayerActive = CheckLayer(pTDBFile, Dialog_Items[3].value, "Active");
	if(NotAssigned(pLayerActive)) return;
	strcpy(szActiveLayer, Dialog_Items[3].value);

	LLayer pLayerSelect = CheckLayer(pTDBFile, Dialog_Items[4].value, "Select");
	if(NotAssigned(pLayerSelect)) return;
	strcpy(szSelectLayer, Dialog_Items[4].value);

	LLayer pLayerPoly = CheckLayer(pTDBFile, Dialog_Items[5].value, "Poly");
	if(NotAssigned(pLayerPoly)) return;
	strcpy(szPolyLayer, Dialog_Items[5].value);

	LLayer pLayerMetal1 = CheckLayer(pTDBFile, Dialog_Items[6].value, "Metal1");
	if(NotAssigned(pLayerMetal1)) return;
	strcpy(szMetal1Layer, Dialog_Items[6].value);

	LLen nChannelWidth = LFile_DispUtoIntU(pTDBFile, atof(Dialog_Items[0].value));
	LLen nChannelLength = LFile_DispUtoIntU(pTDBFile, atof(Dialog_Items[1].value));

	//  MOSIS Design Rules Constraints
	LLen nPolyCntSpacing    = LFile_MicronsToIntU(pTDBFile, 2.0);    // MOSIS DRC 6.4a
	LLen nPolyExtnFromAct   = LFile_MicronsToIntU(pTDBFile, 2.0);    // MOSIS DRC 3.3
	LLen nCntCntSpacing	   = LFile_MicronsToIntU(pTDBFile, 2.0);    // MOSIS DRC 5.3, 6.3, 13.2
	LLen nCntMinWidth       = LFile_MicronsToIntU(pTDBFile, 2.0);    // MOSIS DRC 5.1, 6.1, 13.1, 16.1
//	LLen nActOverlapPoly    = LFile_MicronsToIntU(pTDBFile, 3.0);    // MOSIS DRC 3.4
	LLen nActOverlapCnt     = LFile_MicronsToIntU(pTDBFile, 1.5);    // MOSIS DRC 6.2.b
	LLen nSelOverlapAct     = LFile_MicronsToIntU(pTDBFile, 2.0);    // MOSIS DRC 4.2
	LLen nMet1OverlapActCnt = LFile_MicronsToIntU(pTDBFile, 1.0);    // MOSIS DRC 7.4
	LLen nPolyMinLength     = LFile_MicronsToIntU(pTDBFile, 2.0);  // MOSIS DRC 3.1
	LLen nPolyMinWidth      = nCntMinWidth+2*nActOverlapCnt;

	if(nChannelWidth<nPolyMinWidth)
	{
		LDialog_AlertBox(LFormat("Transistor too narrow. Min Width = %lf",
					LFile_IntUtoMicrons(pTDBFile, nPolyMinWidth)));
		return;
	}

	if(nChannelLength<nPolyMinLength)
	{
		LDialog_AlertBox(LFormat("Transistor too short. Min Length = %lf",
					LFile_IntUtoMicrons(pTDBFile, nPolyMinLength)));
		return;
	}

	// Generate the MOSFET

	// MOSFET construction variables.
	//  Set Poly dimensions which includes the poly-extension-from-gate distance.
	LLen nPolyWidth  = nChannelWidth+ 2*nPolyExtnFromAct;
	LLen nPolyLength = nChannelLength;

	// Draw Poly for Gate structure.
	LCoord X = ptCenter.x-nPolyLength/2;
	LCoord Y = ptCenter.y-nPolyWidth/2;
	LBox_New(pCell, pLayerPoly, X, Y, X+nPolyLength, Y+nPolyWidth);

	// Draw Active.
	LLen nActiveLength = nPolyCntSpacing+nCntMinWidth+nActOverlapCnt;
	X = ptCenter.x-nPolyLength/2;
	Y = ptCenter.y-nChannelWidth/2;
	LBox_New(pCell, pLayerActive, X-nActiveLength, Y, X+nPolyLength+nActiveLength, Y+nChannelWidth);

	// Make N-Select mask for Gate structure.
	LBox_New(pCell, pLayerSelect, X-nActiveLength-nSelOverlapAct,
                                 Y-nSelOverlapAct, 
                                 X+nPolyLength+nActiveLength+nSelOverlapAct,
                                 Y+nChannelWidth+nSelOverlapAct);

	// Draw the contacts
	// Active Contact pitch
	LLen nCntPitch = nCntCntSpacing + nCntMinWidth;
	int nNumOfContacts = (nChannelWidth-2*nActOverlapCnt)/nCntPitch;

	int i=0;
	// This is the distance from the bottom of the first contact to
	//   the top of the last contact.
	LLen nMetalCntLen = nCntPitch*nNumOfContacts-nCntCntSpacing;
	// This offset is used to center to contacts.
	LLen nYOffset = nMetalCntLen/2;
	X = ptCenter.x-nPolyLength/2-nPolyCntSpacing-nCntMinWidth;
	Y = ptCenter.y-nYOffset;

	// This offset is from the left contacts to the right contacts.
	LLen nRightOffset = nCntMinWidth+2*nPolyCntSpacing+nPolyLength;
	for(i=0; i < nNumOfContacts; ++i) 
	{
		// Left Contact
		LBox_New(pCell, pLayerActiveContact, X, Y, X+nCntMinWidth, Y+nCntMinWidth);
		// Right Contact
		LBox_New(pCell, pLayerActiveContact, X+nRightOffset, Y, X+nCntMinWidth+nRightOffset, Y+nCntMinWidth);
		Y += nCntPitch;
	}

	// Draw the Metal1 to active connections
	X = ptCenter.x-nPolyLength/2-nPolyCntSpacing-nCntMinWidth-nMet1OverlapActCnt;
	Y = ptCenter.y-nYOffset-nMet1OverlapActCnt;
	// Make the metal extend out further.
	LLen nExtraMetalLen = nChannelWidth/2-nYOffset+nPolyExtnFromAct;
	// Left side
	LBox_New(pCell, pLayerMetal1, X, Y-nExtraMetalLen, X+nCntMinWidth+2*nMet1OverlapActCnt, Y+2*nMet1OverlapActCnt+nMetalCntLen);
	// Right side
	LBox_New(pCell, pLayerMetal1, X+nRightOffset, Y, X+nCntMinWidth+2*nMet1OverlapActCnt+nRightOffset, Y+2*nMet1OverlapActCnt+nMetalCntLen+nExtraMetalLen);
	
	LDisplay_Refresh();
} // End of Function:  Mosfet

//*************************************************************************
// Function Name    : CheckLayer
// Parameters       : pTDBFile
//                    szLayerName
//                    szLayerTitle
// Description      : 
// Returns          : 
//*************************************************************************
//  Revision History
//   03/11/2003 - NJW - Created function.
//*************************************************************************
LLayer CheckLayer(LFile pTDBFile, const char* szLayerName, const char* szLayerTitle)
{
	LLayer pLayer = LLayer_Find(pTDBFile, szLayerName);
	if(NotAssigned(pLayer))
	{
		LDialog_AlertBox(LFormat("Error:  Couldn't find the %s Layer in the TDB File.\nLayer:  \"%s\"\nPlease check the spelling and make sure the layer exists.",  szLayerTitle, szLayerName));
	}
	return(pLayer);
}

//*************************************************************************
// Function Name    : UPI_Entry_Point
// Parameters       : None
// Description      : Register the macro and setup the links between the 
//								DLL and L-Edit.
// Returns          : 1 if no errors, 0 otherwise.
//*************************************************************************
//  Revision History
//   03/11/2003 - NJW - Created function.
//*************************************************************************
int UPI_Entry_Point(void)
{
	// Bind the UPI macro to a menu and/or Hot Key.
	LMacro_BindToMenuAndHotKey_v9_30(NULL,
												"F2", 
												"N-channel Transistor", 
												"Mosfet", 
												"Macro");
	return(1);
} // End of Function:  UPI_Entry_Point

#if !defined(MAKE_DLL)
} // End of Module:  Mosfet
// Register the macro.
UPI_Entry_Point();
#endif
