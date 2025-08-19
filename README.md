# JetBrains Development Environment

A preconfigured development environment setup for JetBrains-based development using Windows Package Manager (winget).

## Overview

This repository contains a `workload.yaml` configuration file that automatically installs and configures a complete development environment optimized for JetBrains IDE development. The setup includes Java development tools, Node.js runtime, and IntelliJ IDEA Community Edition.

### Repository Contents

- `workload.yaml` - Configuration file defining the development environment
- `README.md` - This documentation file
- `install.bat` - Windows batch script for automated installation
- `install.ps1` - PowerShell script for automated installation

## What Gets Installed

The development environment includes:

- **Microsoft OpenJDK 21** - Latest LTS Java Development Kit
- **Node.js LTS (20.19.2)** - JavaScript runtime for web development
- **IntelliJ IDEA Community Edition** - JetBrains IDE for Java and other languages

## Prerequisites

Before installation, ensure you have:

1. **Windows 10 (version 1809 or later) or Windows 11**
2. **Windows Package Manager (winget)** installed
   - Usually pre-installed on Windows 11
   - For Windows 10, install from [Microsoft Store](https://aka.ms/getwinget)
3. **Administrator privileges** for software installation

### Verify winget Installation

Open Command Prompt or PowerShell and run:
```cmd
winget --version
```

If winget is not installed, download it from the [Microsoft Store](https://apps.microsoft.com/store/detail/app-installer/9NBLGGH4NNS1).

## Installation Instructions

### Method 1: Using Windows Package Manager (Recommended)

1. **Clone or Download the Repository**
   ```cmd
   git clone https://github.com/blackchoey/jetbrains-devbox.git
   cd jetbrains-devbox
   ```

2. **Run the Installation**
   
   Open Command Prompt or PowerShell as Administrator and navigate to the repository folder:
   ```cmd
   cd path\to\jetbrains-devbox
   ```

3. **Install Each Package**
   
   Since winget doesn't natively support workload.yaml files, install each package individually:
   
   ```cmd
   # Install Microsoft OpenJDK 21
   winget install Microsoft.OpenJDK.21
   
   # Install Node.js LTS (specific version)
   winget install OpenJS.NodeJS.LTS --version 20.19.2
   
   # Install IntelliJ IDEA Community Edition
   winget install JetBrains.IntelliJIDEA.Community
   ```

### Method 2: Automated Installation Script (Easiest)

Use the provided installation scripts for a fully automated setup:

#### Option A: Batch Script
1. Right-click `install.bat` and select "Run as administrator"

#### Option B: PowerShell Script  
1. Open PowerShell as Administrator
2. Run: `Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser` (if needed)
3. Execute: `.\install.ps1`

Both scripts will automatically install all required packages with proper error handling.

## Post-Installation Setup

After installation is complete:

1. **Restart your command prompt or PowerShell** to refresh environment variables
2. **Verify Java installation**:
   ```cmd
   java --version
   javac --version
   ```

3. **Verify Node.js installation**:
   ```cmd
   node --version
   npm --version
   ```

4. **Launch IntelliJ IDEA** from the Start Menu or by running:
   ```cmd
   idea
   ```

## Configuration

### Java Development
- Java 21 will be automatically configured as the default JDK
- IntelliJ IDEA will detect the installed JDK automatically
- You can verify the Java installation in IntelliJ IDEA under **File > Project Structure > SDKs**

### Node.js Development
- Node.js and npm will be available globally
- IntelliJ IDEA includes built-in support for JavaScript and Node.js development
- Consider installing the Node.js plugin if not already included

## Troubleshooting

### Common Issues

**1. "winget is not recognized"**
- Ensure Windows Package Manager is installed from Microsoft Store
- Restart your command prompt after installation

**2. "Administrator privileges required"**
- Right-click Command Prompt or PowerShell and select "Run as administrator"
- Some packages require elevated privileges for installation

**3. "Package not found"**
- Verify package names with: `winget search <package-name>`
- Ensure you have the latest version of winget: `winget upgrade --include-unknown`

**4. Installation fails**
- Check internet connectivity
- Try installing packages one by one instead of all at once
- Clear winget cache: `winget settings --enable LocalArchiveMalwareScanOverride`

**5. Environment variables not updated**
- Restart your command prompt/PowerShell
- Log out and log back in to Windows
- Manually add installation paths to PATH if needed

### Getting Help

If you encounter issues:
1. Check the [winget documentation](https://docs.microsoft.com/en-us/windows/package-manager/)
2. Verify system requirements
3. Try installing packages individually
4. Open an issue in this repository with error details

## Customization

To modify the development environment:

1. Edit the `workload.yaml` file to add or remove packages
2. Find additional packages with: `winget search <keyword>`
3. Add packages to the tasks list following the existing format

Example of adding a new package:
```yaml
- name: winget
  description: Install Git for Windows
  parameters:
    package: Git.Git
```

## License

This project is open source. See individual software licenses for installed packages.

## Contributing

Feel free to submit issues and enhancement requests to improve this development environment setup.