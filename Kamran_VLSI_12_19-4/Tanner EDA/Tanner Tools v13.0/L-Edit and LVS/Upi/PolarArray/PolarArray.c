//*************************************************************************
//* FILE: PolarArray.c
//* DESCRIPTION: Create Polar Array
//*************************************************************************

#if !defined(MAKE_DLL)

// Declare the module for the interpreter.
module PolarArray
{

#endif

//*************************************************************************
//* INCLUDE FILES
//*************************************************************************
#if defined(MAKE_DLL)
#	pragma warning( disable : 4514 )
#endif
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>
#include "ldata.h"     // Main UPI header.

//*************************************************************************
//* PROTOTYPES
//*************************************************************************
LBoolean PickCell(LCell pCurrentCell, LCell* pPickedCell, const char* szMsg);
void MarkCells(LCell pTopCell);
void ClearMarks(LFile pTDBFile);
LPoint Rotate(double dAngle, const LPoint* ptTranslation, const LPoint* ptCenter);

//*************************************************************************
//* CONSTANTS
//*************************************************************************
#if defined(MAKE_DLL)
	const double PI=3.1415926535;
#else
	double PI=3.1415926535;  // Interpreted can only handle const pointers.
#endif

#define ABS(x) ((x)>0?(x):-(x))
#define SQ(x)  ((x)*(x))

//*************************************************************************
// Function Name    : PolarArray
// Parameters       : None.
// Description      : Create Polar Array
// Returns          : Nothing.
//*************************************************************************
//  Revision History
//   03/10/2003 - NJW - Created function.
//*************************************************************************
void PolarArray(void)
{
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

	LCell pPickedCell=NULL;
	if(PickCell(pCell, &pPickedCell, "Select the cell to be arrayed.")==LTRUE)
	{
		char szValue[50]="3";		
		if(LDialog_InputBox("Create Polar Array", "Number of instances in the polar array", szValue) == 0)
			return;

		int nInstances=3; // Number of instances in the polar array
		sscanf(szValue,"%d",&nInstances);

		if(nInstances <= 2)
		{
			LDialog_AlertBox("ERROR:  Minimun number of instances should be 3.");
			return;
		}

		LPoint ptCenter = LCursor_GetPositionEx99(1, 1, "Please select the center of the polar array.");

		// Check if the user canceled
		if((ptCenter.x > WORLD_MAX) || (ptCenter.y > WORLD_MAX))
			return;

		// Calculate the rotation angle
		double dRotationAngle = 360.0/nInstances;

		// Calculate the radius of polar array
		LRect rtCellMBB = LCell_GetMbbAll(pPickedCell);
		LCoord nCellWidth = rtCellMBB.x1-rtCellMBB.x0;
		LLen nPolarRadius = (LLen)((nCellWidth/2)/tan(0.5*dRotationAngle*PI/180));
		
		// Translate the midpoint of the lower edge of the cell's MBB to the center point
		LPoint ptTranslation;  
		ptTranslation.x = -(rtCellMBB.x0 + nCellWidth/2)+ptCenter.x;
		ptTranslation.y = -rtCellMBB.y0+ptCenter.y;

		LDisplayUnitInfo oDisplayUnitInfo;
		LFile_GetDisplayUnitInfo(pTDBFile, &oDisplayUnitInfo);

		LDialog_MsgBox(LFormat(LFormat("Polar Radius = %%.%ldlf %%s\nRotation Angle = %%lG",oDisplayUnitInfo.nEditDecimalDigits),
										nPolarRadius/oDisplayUnitInfo.dScaleFactor,
										oDisplayUnitInfo.szDispUnitName,
										dRotationAngle));

		LTransform_Ex99 oTransform = LTransform_Zero_Ex99();
		int i = 0;
		for(i=0; i<nInstances; i++)
		{
			// Calculate the current instance rotation angle.  Normally, zero instance  rotation
			//  puts the instance at 90 degrees.  Make the current rotation angle rotated by 
			//  -90 degrees, so you can start at absolute zero degrees.
			// You have to use fmod here instead of negative angles because a negative angle 
			//  means mirrored.
			double dAngle = fmod(i*dRotationAngle+270.0,360.0);
			oTransform.orientation = (float)dAngle;

			// Rotate the translation point around the center point.
			oTransform.translation = Rotate(dAngle, &ptTranslation, &ptCenter);

			// Now the instance is rotated and translated to the center point.
			// We now have to calculate the translation to the radius of the polar array.
			dAngle = i*dRotationAngle;
			dAngle *= PI;
			dAngle /= 180.0;
			// Use standard polar coordinate conversion.
			oTransform.translation.x += (LCoord)(nPolarRadius*cos(dAngle));
			oTransform.translation.y += (LCoord)(nPolarRadius*sin(dAngle));

			// Place the instance.
			LInstance_New_Ex99(pCell, pPickedCell, oTransform, LPoint_Set(1,1), LPoint_Set(0,0));
		}
		
		LCell_HomeView(pCell);
	}
} // End of Function:  PolarArray

//*************************************************************************
// Function Name    : Rotate
// Parameters       : dAngle
//                    ptTranslation
//                    ptCenter
//                    ptResult
// Description      : 
// Returns          : Nothing.
//*************************************************************************
//  Revision History
//   03/11/2003 - NJW - Created function.
//*************************************************************************
LPoint Rotate(double dAngle, const LPoint* ptTranslation, const LPoint* ptCenter)
{
	dAngle *= PI;
	dAngle /= 180.0;
	double dOrigX = ptTranslation->x-ptCenter->x;
	double dOrigY = ptTranslation->y-ptCenter->y;
	LPoint ptResult;
	ptResult.x = (LCoord)(dOrigX*cos(dAngle)-dOrigY*sin(dAngle));
	ptResult.y = (LCoord)(dOrigX*sin(dAngle)+dOrigY*cos(dAngle));
	ptResult.x += ptCenter->x;
	ptResult.y += ptCenter->y;
	return(ptResult);
}

//*************************************************************************
// Function Name    : PickCell
// Parameters       : pFile - TDB File with cells to choose from.
//                    pCell - Cell that was selected.
//                    sMsg - Title of the picklist dialog.
// Description      : Displays a dropdown list of cell names.
// Returns          : True if a cell was selected, false if cancel or error occurred.
//*************************************************************************
//  Revision History
//   06/14/1999 - NJW - Created function.
//*************************************************************************
LBoolean PickCell(LCell pCurrentCell, LCell* pPickedCell, const char* szMsg)
{
	LBoolean bReturnResult = LFALSE;
	if(Assigned(pCurrentCell) && Assigned(pPickedCell) && Assigned(szMsg))
	{
		LFile pTDBFile = LCell_GetFile(pCurrentCell);		// The TDB current file.
		ClearMarks(pTDBFile);
		MarkCells(pCurrentCell);

		// Count the number of cells.
		long nSelectedCell = 0;		
		long nNumOfCells = 0;
		LCell pCell = NULL;
		for(pCell = LCell_GetList(pTDBFile); Assigned(pCell); pCell = LCell_GetNext(pCell))
		{
			if(LEntity_PropertyExists((const LEntity)pCell, "PA.MARKED")==LPropertyNotFound)
			{
				if(pCell == *pPickedCell)
				{
					nSelectedCell = nNumOfCells;
				}
				nNumOfCells++;
			}
		}

		// Allocate space for all of the cell names.
		char** szaCellNames = (char **) malloc(nNumOfCells * sizeof(char *));
		
		// Get all of the cell names.
		char szNameOfCell[MAX_CELL_NAME];
		long i = 0;
		for(pCell = LCell_GetList(pTDBFile); Assigned(pCell); pCell = LCell_GetNext(pCell))
		{
			if(LEntity_PropertyExists((const LEntity)pCell, "PA.MARKED")==LPropertyNotFound)
			{
				// Get the name.
				LCell_GetName(pCell, szNameOfCell, sizeof(szNameOfCell));
				// Allocate space for the name.
				szaCellNames[i] = (char *) malloc((strlen(szNameOfCell) + 1) * sizeof(char));
				// Add it to the list of cells.
				strcpy(szaCellNames[i], szNameOfCell);
				i++;
			}
		}
		
		// Display the picklist.
		int nCellResult = LDialog_PickList(szMsg, (const char**)szaCellNames, nNumOfCells, nSelectedCell);
		
		if(nCellResult >= 0)
		{
			// Get the cell that was selected.
			(*pPickedCell) = LCell_Find(pTDBFile, szaCellNames[nCellResult]);
			if(Assigned((*pPickedCell)))
			{
				bReturnResult = LTRUE;
			}
		}
		
		// Deallocate the cell list.
		for(i = 0; i < nNumOfCells; i++)
		{
			free(szaCellNames[i]);
		}
		free(szaCellNames);
		ClearMarks(pTDBFile);
	}
	return(bReturnResult);
}

//*************************************************************************
// Function Name    : MarkCells
// Parameters       : pCell
// Description      : Marks those cells that can't be instanced.
// Returns          : Nothing.
//*************************************************************************
//  Revision History
//   03/05/2003 - NJW - Created function.
//*************************************************************************
void MarkCells(LCell pTopCell)
{
	LFile pTDBFile = LCell_GetFile(pTopCell);		// The TDB current file.
	bool bMark = true;
	LEntity_AssignProperty((LEntity)pTopCell, "PA.MARKED", L_bool, &bMark);
	LCell pCell = NULL;
	for(pCell = LCell_GetList(pTDBFile); Assigned(pCell); pCell = LCell_GetNext(pCell))
	{
		LInstance pInstance = NULL;
		for(pInstance = LInstance_GetList(pCell); Assigned(pInstance); pInstance = LInstance_GetNext(pInstance))
		{
			if(LInstance_GetCell(pInstance) == pTopCell)
			{
				LEntity_AssignProperty((LEntity)pCell, "PA.MARKED", L_bool, &bMark);
				break;
			}
		}
	}
}

//*************************************************************************
// Function Name    : ClearMarks
// Parameters       : pTDBFile
// Description      : Removes cell marked with the property PA.MARKED.
// Returns          : Nothing.
//*************************************************************************
//  Revision History
//   03/10/2003 - NJW - Created function.
//*************************************************************************
void ClearMarks(LFile pTDBFile)
{
	LCell pCell = NULL;
	for(pCell = LCell_GetList(pTDBFile); Assigned(pCell); pCell = LCell_GetNext(pCell))
	{
		LEntity_DeleteProperty((LEntity)pCell, "PA.MARKED");
		LEntity_DeleteProperty((LEntity)pCell, "PA");
	}
}

//*************************************************************************
// Function Name    : UPI_Entry_Point
// Parameters       : None
// Description      : Register the macro and setup the links between the 
//								DLL and L-Edit.
// Returns          : 1 if no errors, 0 otherwise.
//*************************************************************************
//  Revision History
//   03/10/2003 - NJW - Created function.
//*************************************************************************
int UPI_Entry_Point(void)
{
	// Bind the UPI macro to a menu and/or Hot Key.
	LMacro_BindToMenuAndHotKey_v9_30("Tools",
												NULL, 
												"Create Polar Array", 
												"PolarArray", 
												"Macro");
	return(1);
} // End of Function:  UPI_Entry_Point

#if !defined(MAKE_DLL)
} // End of Module:  PolarArray
// Register the macro.
UPI_Entry_Point();
#endif
