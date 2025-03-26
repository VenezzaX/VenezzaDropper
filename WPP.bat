@echo off
setlocal

:: Set the path to the INSTALLATION KIT folder on Desktop
set "kitFolder=%USERPROFILE%\Desktop\INSTALLATION KIT"

:: Search for the first .bmp file in the folder
set "wallpaperFile="
for %%F in ("%kitFolder%\*.bmp") do (
    set "wallpaperFile=%%F"
)
:: Set wallpaper using PowerShell (works for BMP)
powershell -Command "Add-Type -TypeDefinition \"using System; using System.Runtime.InteropServices; public class Wallpaper { [DllImport(\"\"user32.dll\"\")] public static extern int SystemParametersInfo(int uAction, int uParam, string lpvParam, int fuWinIni); }\" ; [Wallpaper]::SystemParametersInfo(20, 0, '%wallpaperFile%', 3)"

:: Force Windows to apply changes
timeout /t 1 /nobreak >nul
rundll32.exe user32.dll, UpdatePerUserSystemParameters

echo Wallpaper set successfully from "INSTALLATION KIT" folder.
