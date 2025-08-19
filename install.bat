@echo off
echo Installing JetBrains Development Environment...
echo.

echo Installing Microsoft OpenJDK 21...
winget install Microsoft.OpenJDK.21 --accept-source-agreements --accept-package-agreements

echo Installing Node.js LTS...
winget install OpenJS.NodeJS.LTS --version 20.19.2 --accept-source-agreements --accept-package-agreements

echo Installing IntelliJ IDEA Community Edition...
winget install JetBrains.IntelliJIDEA.Community --accept-source-agreements --accept-package-agreements

echo.
echo Installation complete!
echo Please restart your command prompt to refresh environment variables.
pause