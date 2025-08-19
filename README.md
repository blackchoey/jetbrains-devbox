# JetBrains Development Environment

A pre-configured development environment setup for JetBrains development using Windows Package Manager (winget).

## Overview

This repository contains a workload configuration that automatically installs and sets up a complete development environment optimized for JetBrains development workflows. The setup includes Java development tools, Node.js runtime, and IntelliJ IDEA Community Edition.

## Prerequisites

Before using this development environment, ensure you have:

- **Windows 10** (version 1709 or later) or **Windows 11**
- **Windows Package Manager (winget)** - usually pre-installed on modern Windows systems
- **Administrator privileges** - required for package installations

### Verifying winget Installation

To check if winget is installed and available:

```powershell
winget --version
```

If winget is not available, install it from the [Microsoft Store](https://www.microsoft.com/p/app-installer/9nblggh4nns1) or [GitHub releases](https://github.com/microsoft/winget-cli/releases).

## Installation

### Option 1: Manual Installation (Recommended)

Install each component individually to have more control over the process:

```powershell
# Install Microsoft OpenJDK 21
winget install Microsoft.OpenJDK.21

# Install Node.js LTS (version 20.19.2)
winget install OpenJS.NodeJS.LTS --version 20.19.2

# Install IntelliJ IDEA Community Edition
winget install JetBrains.IntelliJIDEA.Community
```

### Option 2: Using Workload Configuration

If you have a tool that supports workload.yaml configurations, you can use the provided configuration file:

```powershell
# Clone this repository
git clone https://github.com/blackchoey/jetbrains-devbox.git
cd jetbrains-devbox

# Use your workload processor to execute the configuration
# (Replace with your specific workload tool command)
```

## What Gets Installed

This environment includes:

| Component | Version | Description |
|-----------|---------|-------------|
| **Microsoft OpenJDK 21** | Latest | Java Development Kit for Java applications |
| **Node.js LTS** | 20.19.2 | JavaScript runtime for web development |
| **IntelliJ IDEA Community** | Latest | Integrated Development Environment |

## Post-Installation Setup

After installation, you may want to:

1. **Verify Java Installation:**
   ```powershell
   java --version
   javac --version
   ```

2. **Verify Node.js Installation:**
   ```powershell
   node --version
   npm --version
   ```

3. **Launch IntelliJ IDEA:**
   - Open IntelliJ IDEA from the Start Menu
   - Configure your preferences and themes
   - Install additional plugins as needed

## Usage

Once installed, you can:

- **Java Development**: Use the installed OpenJDK 21 for Java projects
- **Web Development**: Use Node.js for JavaScript/TypeScript projects
- **IDE**: Use IntelliJ IDEA for development across multiple languages

### Setting up a New Project

1. Open IntelliJ IDEA
2. Choose "New Project" or "Open" for existing projects
3. Select the appropriate project type (Java, Node.js, etc.)
4. The installed JDK and Node.js will be automatically detected

## Troubleshooting

### Common Issues

**winget command not found:**
- Ensure Windows is up to date
- Install App Installer from Microsoft Store
- Restart your terminal/PowerShell

**Installation fails with access denied:**
- Run PowerShell as Administrator
- Check if Windows Defender or other antivirus is blocking the installation

**Java/Node.js not found after installation:**
- Restart your terminal/command prompt
- Check if the PATH environment variable includes the installation directories
- Log out and log back in to refresh environment variables

### Getting Help

If you encounter issues:

1. Check the [winget documentation](https://docs.microsoft.com/en-us/windows/package-manager/winget/)
2. Verify system requirements
3. Try installing components individually to isolate issues

## Contributing

To contribute to this development environment configuration:

1. Fork this repository
2. Make your changes to `workload.yaml`
3. Test the configuration on a clean Windows system
4. Submit a pull request with a description of your changes

## License

This project is open source and available under the [MIT License](LICENSE).

## Support

For issues specific to this configuration, please open an issue in this repository. For issues with individual packages, refer to their respective documentation:

- [Microsoft OpenJDK](https://docs.microsoft.com/en-us/java/openjdk/)
- [Node.js](https://nodejs.org/en/docs/)
- [IntelliJ IDEA](https://www.jetbrains.com/help/idea/)