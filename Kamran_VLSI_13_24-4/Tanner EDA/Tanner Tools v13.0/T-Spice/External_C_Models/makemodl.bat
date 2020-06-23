@echo off
if "%1" == "" goto USAGE 
call "C:\Program Files\Microsoft Visual Studio 8\Common7\Tools\vsvars32.bat"
nmake /f "model.mak" CFG="template - Win32 Release" NAME=%1
goto :EOF
:USAGE
echo Usage:  %0 basename
echo         where basename is the base name of the C file that 
echo         contains your model.  For example, if your model 
echo         code is in resistor.c, type: %0 resistor

