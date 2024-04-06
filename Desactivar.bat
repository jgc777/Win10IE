@echo off
echo Cierre la ventana para cancelar.
pause
cd Recursos
del /q "%appdata%\ie.exe"
move "ie.lnk" "Internet Explorer.lnk"
xcopy /y "Internet Explorer.lnk" "%appdata%\Microsoft\Windows\Start Menu\Programs\"
move "Internet Explorer.lnk" "ie.lnk"
cls
echo Se ha desactivado Internet Explorer.
echo.
pause
exit