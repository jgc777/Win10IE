@echo off
echo Cierre la ventana para cancelar . . .
pause
cd Recursos
echo CreateObject("InternetExplorer.Application").Visible=true>ie.vbs
move /y "ie.vbs" "%appdata%"
del /q "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Accessories\Internet Explorer.lnk"
del /q "%appdata%\Microsoft\Windows\Start Menu\Programs\Internet Explorer.lnk"
nircmd shortcut "%appdata%\ie.vbs" "~$folder.programs$" "Internet Explorer" "" "~$folder.programfiles$\Internet Explorer\iexplore.exe"
cls
echo Se ha activado Internet Explorer. Puede ejecutarlo desde inicio.
echo Para agregar el comando ie.exe (o ie) ejecute como administrador
echo "ActivarCMD.bat".
echo.
pause
exit