ECHO OFF
CLS
:MENU
ECHO.
ECHO ...............................................
ECHO 	Please enter your choice:
ECHO ...............................................
ECHO.
ECHO 1) Build
ECHO 2) Rebuild native dependencies
ECHO 3) Start
ECHO 4) Install Themes
ECHO 5) Install Indent Rainbow
ECHO 5) Quit
ECHO.
SET /P M=Type the number and then press ENTER: 
IF %M%==1 GOTO BUILD
IF %M%==2 GOTO REBUILD
IF %M%==3 GOTO START
IF %M%==4 GOTO THEMES
IF %M%==5 GOTO RAINBOW
IF %M%==5 GOTO QUIT
:BUILD
ECHO "Building The Arduino IDE"
yarn
ECHO "Arduino IDE Builted"
GOTO MENU
:REBUILD
ECHO "Rebuilding All The Native Dependencies"
yarn rebuild:electron
ECHO "All The Native Dependencies Builted"
GOTO MENU
:START
ECHO "Starting The Arduino IDE"
yarn start
GOTO MENU
:THEMES
Xcopy /E /I ".\ext\vsc-material-theme" ".\plugins\vsc-material-theme"
:RAINBOW
Xcopy /E /I ".\ext\indent-rainbow" ".\plugins\indent-rainbow"
:QUIT
ECHO "Bye"
