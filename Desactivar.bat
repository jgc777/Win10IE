@echo off
echo Cierre la ventana para cancelar . . .
pause
cd Recursos
del /q "%appdata%\ie.vbs"
del /q "%appdata%\Microsoft\Windows\Start Menu\Programs\Internet Explorer.lnk"
nircmd.exe shortcut "C:\ProgramFiles\Internet Explorer\iexplore.exe" "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Accessories" "Internet Explorer"
cls
echo Se ha desactivado Internet Explorer.
echo.
pause
exit