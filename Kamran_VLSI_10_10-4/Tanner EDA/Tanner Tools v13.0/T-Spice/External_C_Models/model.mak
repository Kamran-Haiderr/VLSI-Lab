# Microsoft Developer Studio Generated NMAKE File, Format Version 4.10
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Dynamic-Link Library" 0x0102

!IF "$(CFG)" == ""
CFG=template - Win32 Debug
!MESSAGE No configuration specified.  Defaulting to template - Win32 Debug.
!ENDIF 

!IF "$(CFG)" != "template - Win32 Release" && "$(CFG)" !=\
 "template - Win32 Debug"
!MESSAGE Invalid configuration "$(CFG)" specified.
!MESSAGE You can specify a configuration when running NMAKE on this makefile
!MESSAGE by defining the macro CFG on the command line.  For example:
!MESSAGE 
!MESSAGE NMAKE /f "template.mak" CFG="template - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "template - Win32 Release" (based on\
 "Win32 (x86) Dynamic-Link Library")
!MESSAGE "template - Win32 Debug" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE 
!ERROR An invalid configuration is specified.
!ENDIF 

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE 
NULL=nul
!ENDIF 
################################################################################
# Begin Project
# PROP Target_Last_Scanned "template - Win32 Debug"
CPP=cl.exe
RSC=rc.exe
MTL=mktyplib.exe

!IF  "$(CFG)" == "template - Win32 Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "Release"
# PROP BASE Intermediate_Dir "Release"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "Release"
# PROP Intermediate_Dir "Release"
# PROP Target_Dir ""
#OUTDIR=.\Release
#INTDIR=.\Release
OUTDIR=.
INTDIR=.

ALL : "$(OUTDIR)\$(NAME).dll"
	-@erase $(INTDIR)\$(NAME).obj
        -@erase $(OUTDIR)\$(NAME).exp
        -@erase $(OUTDIR)\$(NAME).lib

CLEAN : 
	-@erase "$(INTDIR)\$(NAME).obj"
        -@erase "$(OUTDIR)\$(NAME).dll"
        -@erase "$(OUTDIR)\$(NAME).exp"
        -@erase "$(OUTDIR)\$(NAME).lib"

#"$(OUTDIR)" :
#    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

# ADD BASE CPP /nologo /MT /W3 /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /c
# ADD CPP /nologo /MT /W3 /O2 /I "..\.." /D "NDEBUG" /D "WIN32" /D "_WINDOWS" /D "WIN" /D "MAKE_DLL" /c
CPP_PROJ=/nologo /MT /W3 /O2 /I "..\.." /D "NDEBUG" /D "WIN32" /D\
 "_WINDOWS" /D "WIN" /D "MAKE_DLL" \
 /Fo"$(INTDIR)/" /c 
#CPP_OBJS=.\Release/
CPP_OBJS=./
CPP_SBRS=.\.
# ADD BASE MTL /nologo /D "NDEBUG" /win32
# ADD MTL /nologo /D "NDEBUG" /win32
MTL_PROJ=/nologo /D "NDEBUG" /win32 
# ADD BASE RSC /l 0x409 /d "NDEBUG"
# ADD RSC /l 0x409 /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
BSC32_FLAGS=/nologo /o"$(OUTDIR)/$(NAME).bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:windows /dll /machine:I386
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib tspmodel.lib /nologo /subsystem:windows /dll /machine:I386
# SUBTRACT LINK32 /pdb:none
LINK32_FLAGS=kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib\
 advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib\
 odbccp32.lib tspmodel.lib /nologo /subsystem:windows /dll /incremental:no\
 /pdb:"$(OUTDIR)/$(NAME).pdb" /machine:I386 /out:"$(OUTDIR)/$(NAME).dll"\
 /implib:"$(OUTDIR)/$(NAME).lib" /nodefaultlib:libcmtd.lib\
/nodefaultlib:msvcrtd.lib
LINK32_OBJS= \
        "$(INTDIR)\$(NAME).obj"

"$(OUTDIR)\$(NAME).dll" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "template - Win32 Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "Debug"
# PROP BASE Intermediate_Dir "Debug"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "Debug"
# PROP Intermediate_Dir "Debug"
# PROP Target_Dir ""
#OUTDIR=.\Debug
#INTDIR=.\Debug
OUTDIR=.
INTDIR=.

ALL : "$(OUTDIR)\$(NAME).dll"
        -@erase "$(INTDIR)\$(NAME).obj"
	-@erase "$(INTDIR)\vc80.idb"
	-@erase "$(INTDIR)\vc80.pdb"
        -@erase "$(OUTDIR)\$(NAME).exp"
        -@erase "$(OUTDIR)\$(NAME).ilk"
        -@erase "$(OUTDIR)\$(NAME).lib"

CLEAN : 
        -@erase "$(INTDIR)\$(NAME).obj"
	-@erase "$(INTDIR)\vc80.idb"
	-@erase "$(INTDIR)\vc80.pdb"
        -@erase "$(OUTDIR)\$(NAME).dll"
        -@erase "$(OUTDIR)\$(NAME).exp"
        -@erase "$(OUTDIR)\$(NAME).ilk"
        -@erase "$(OUTDIR)\$(NAME).lib"

#"$(OUTDIR)" :
#    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

# ADD BASE CPP /nologo /MTd /W3 /Gm /Zi /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /c
# ADD CPP /nologo /MTd /W3 /Gm /Zi /Od /I "..\.." /D "_DEBUG" /D "WIN32" /D "_WINDOWS" /D "WIN" /D "MAKE_DLL" /c
CPP_PROJ=/nologo /W3 /Gm /ZI /Od /I "..\.." /D "_DEBUG" /D "WIN32" /D\
 "_WINDOWS" /D "WIN" /D "MAKE_DLL" \
 /Fo"$(INTDIR)/" /Fd"$(INTDIR)/" /c 
#CPP_OBJS=.\Debug/
CPP_OBJS=./
CPP_SBRS=.\.
# ADD BASE MTL /nologo /D "_DEBUG" /win32
# ADD MTL /nologo /D "_DEBUG" /win32
MTL_PROJ=/nologo /D "_DEBUG" /win32 
# ADD BASE RSC /l 0x409 /d "_DEBUG"
# ADD RSC /l 0x409 /d "_DEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
BSC32_FLAGS=/nologo /o"$(OUTDIR)/$(NAME).bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:windows /dll /debug /machine:I386
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib tspmodeld.lib /nologo /subsystem:windows /dll /debug /machine:I386
# SUBTRACT LINK32 /pdb:none
LINK32_FLAGS=kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib\
 advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib\
 odbccp32.lib tspmodeld.lib /nologo /subsystem:windows /dll /incremental:yes\
 /pdb:"$(OUTDIR)/$(NAME).pdb" /debug /machine:I386\
 /out:"$(OUTDIR)/$(NAME).dll" /implib:"$(OUTDIR)/$(NAME).lib" 
LINK32_OBJS= \
        "$(INTDIR)\$(NAME).obj"

"$(OUTDIR)\$(NAME).dll" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ENDIF 

.c{$(CPP_OBJS)}.obj:
   $(CPP) $(CPP_PROJ) $<  

.cpp{$(CPP_OBJS)}.obj:
   $(CPP) $(CPP_PROJ) $<  

.cxx{$(CPP_OBJS)}.obj:
   $(CPP) $(CPP_PROJ) $<  

.c{$(CPP_SBRS)}.sbr:
   $(CPP) $(CPP_PROJ) $<  

.cpp{$(CPP_SBRS)}.sbr:
   $(CPP) $(CPP_PROJ) $<  

.cxx{$(CPP_SBRS)}.sbr:
   $(CPP) $(CPP_PROJ) $<  

################################################################################
# Begin Target

# Name "template - Win32 Release"
# Name "template - Win32 Debug"

!IF  "$(CFG)" == "template - Win32 Release"

!ELSEIF  "$(CFG)" == "template - Win32 Debug"

!ENDIF 

################################################################################
# Begin Source File

SOURCE=.\$(NAME).c
DEP_CPP_TEMPL=\
	

"$(INTDIR)\$(NAME).obj" : $(SOURCE) $(DEP_CPP_TEMPL) "$(INTDIR)"


# End Source File
# End Target
# End Project
################################################################################