@echo off
setlocal

:: Set the path to the INSTALLATION KIT folder on Desktop
set "kitFolder=%USERPROFILE%\Desktop\INSTALLATION KIT"

:: Check if the folder exists
if not exist "%kitFolder%" (
    echo Error: "INSTALLATION KIT" folder not found on Desktop.
    pause
    exit /b 1
)

:: Search for the first .bmp file in the folder
set "wallpaperFile="
for %%F in ("%kitFolder%\*.bmp") do (
    set "wallpaperFile=%%F"
    goto :foundBMP
)

:foundBMP
if not defined wallpaperFile (
    echo No .bmp file found in "INSTALLATION KIT" folder.
    pause
    exit /b 1
)

:: Set wallpaper using PowerShell (works for BMP)
powershell -Command "Add-Type -TypeDefinition \"using System; using System.Runtime.InteropServices; public class Wallpaper { [DllImport(\"\"user32.dll\"\")] public static extern int SystemParametersInfo(int uAction, int uParam, string lpvParam, int fuWinIni); }\" ; [Wallpaper]::SystemParametersInfo(20, 0, '%wallpaperFile%', 3)"

:: Update registry to reinforce settings
reg add "HKCU\Control Panel\Desktop" /v Wallpaper /d "%wallpaperFile%" /f >nul
reg add "HKCU\Control Panel\Desktop" /v WallpaperStyle /d "10" /f >nul  :: 10 = Fill, 6 = Fit
reg add "HKCU\Control Panel\Desktop" /v TileWallpaper /d "0" /f >nul

:: Force Windows to apply changes
timeout /t 1 /nobreak >nul
rundll32.exe user32.dll, UpdatePerUserSystemParameters

echo Wallpaper set successfully from "INSTALLATION KIT" folder.
pause