# JetBrains Development Environment Installation Script
# Run this script as Administrator

Write-Host "Installing JetBrains Development Environment..." -ForegroundColor Green
Write-Host ""

try {
    Write-Host "Installing Microsoft OpenJDK 21..." -ForegroundColor Yellow
    winget install Microsoft.OpenJDK.21 --accept-source-agreements --accept-package-agreements
    
    Write-Host "Installing Node.js LTS..." -ForegroundColor Yellow
    winget install OpenJS.NodeJS.LTS --version 20.19.2 --accept-source-agreements --accept-package-agreements
    
    Write-Host "Installing IntelliJ IDEA Community Edition..." -ForegroundColor Yellow
    winget install JetBrains.IntelliJIDEA.Community --accept-source-agreements --accept-package-agreements
    
    Write-Host ""
    Write-Host "Installation complete!" -ForegroundColor Green
    Write-Host "Please restart your command prompt to refresh environment variables." -ForegroundColor Cyan
}
catch {
    Write-Host "An error occurred during installation: $_" -ForegroundColor Red
}

Read-Host "Press Enter to continue..."