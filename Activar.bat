@echo off
echo Cierre la ventana para cancelar.
pause
cd Recursos
echo cmd /q /c "echo CreateObject("InternetExplorer.Application").Visible=true>ie.vbs && ie.vbs && del /q ie.vbs">ie.bat
iexpress /n ie.sed
del /q ie.bat
xcopy /y "ie.exe" "%appdata%"
del /q "ie.exe"
del /q "%appdata%\Microsoft\Windows\Start Menu\Programs\Accessories\Internet Explorer.lnk"
rename "ien.lnk" "Internet Explorer.lnk"
xcopy /y "Internet Explorer.lnk" "%appdata%\Microsoft\Windows\Start Menu\Programs\"
rename "Internet Explorer.lnk" "ien.lnk"
cls
echo Se ha activado Internet Explorer. Puede ejecutarlo desde inicio.
echo Para agregar el comando ie.exe (o ie) ejecute como administrador
echo "IE.InstalarCMD.bat" en la carpeta CMD.
echo.
pause
exit