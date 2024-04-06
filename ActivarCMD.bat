@echo off
del /q ie.exe.symlink
mklink ie.exe %appdata%\ie.exe
cls
echo Se ha añadido el comando ie.exe (o ie).
echo.
pause
exit