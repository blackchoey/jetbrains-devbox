# JetBrains DevBox

A preconfigured development environment setup for JetBrains development using Windows Package Manager (winget).

## Overview

This repository contains a `workload.yaml` configuration file that automatically installs and configures essential development tools for JetBrains-based development workflows. The setup includes Java development kit, Node.js runtime, and IntelliJ IDEA Community Edition.

## Prerequisites

Before you begin, ensure you have the following:

- **Windows 10 (1709+) or Windows 11**: This setup is designed for Windows systems
- **Windows Package Manager (winget)**: Usually comes pre-installed on modern Windows versions
  - If not installed, get it from the [Microsoft Store](https://www.microsoft.com/store/productId/9NBLGGH4NNS1)
  - Or download from [GitHub releases](https://github.com/microsoft/winget-cli/releases)
- **Administrator privileges**: Required for software installation
- **Internet connection**: For downloading packages

## What Gets Installed

This development environment includes:

| Software | Version | Purpose |
|----------|---------|---------|
| **Microsoft OpenJDK 21** | Latest | Java development and runtime |
| **Node.js LTS** | 20.19.2 | JavaScript/TypeScript development |
| **IntelliJ IDEA Community Edition** | Latest | Primary IDE for development |

## Installation Instructions

### Option 1: Using Windows Package Manager (Recommended)

1. **Clone or download this repository**:
   ```bash
   git clone https://github.com/blackchoey/jetbrains-devbox.git
   cd jetbrains-devbox
   ```

2. **Open PowerShell or Command Prompt as Administrator**:
   - Press `Win + X` and select "Windows PowerShell (Admin)" or "Terminal (Admin)"
   - Or search for "PowerShell" in Start menu, right-click and "Run as administrator"

3. **Navigate to the repository folder**:
   ```bash
   cd path\to\jetbrains-devbox
   ```

4. **Install packages using the workload configuration**:
   ```bash
   # Install Microsoft OpenJDK 21
   winget install Microsoft.OpenJDK.21
   
   # Install Node.js LTS (specific version)
   winget install OpenJS.NodeJS.LTS --version 20.19.2
   
   # Install IntelliJ IDEA Community Edition
   winget install JetBrains.IntelliJIDEA.Community
   ```

### Option 2: Manual Installation

If you prefer to install packages individually or encounter issues with the workload file:

1. **Install Microsoft OpenJDK 21**:
   ```bash
   winget install Microsoft.OpenJDK.21
   ```

2. **Install Node.js LTS**:
   ```bash
   winget install OpenJS.NodeJS.LTS --version 20.19.2
   ```

3. **Install IntelliJ IDEA Community Edition**:
   ```bash
   winget install JetBrains.IntelliJIDEA.Community
   ```

## Post-Installation Setup

After installation is complete:

1. **Verify Java installation**:
   ```bash
   java --version
   ```
   Expected output: `openjdk 21.x.x`

2. **Verify Node.js installation**:
   ```bash
   node --version
   npm --version
   ```
   Expected output: `v20.19.2` and npm version

3. **Launch IntelliJ IDEA**:
   - Find "IntelliJ IDEA Community Edition" in Start menu
   - Or run from command line: `idea64.exe` (if added to PATH)

4. **Configure Java SDK in IntelliJ IDEA**:
   - Open IntelliJ IDEA
   - Go to File → Project Structure → SDKs
   - Add the installed OpenJDK 21 (usually located in `C:\Program Files\Microsoft\jdk-21.x.x`)

## Troubleshooting

### Common Issues

**Issue**: `winget` command not found
- **Solution**: Install Windows Package Manager from Microsoft Store or GitHub

**Issue**: Permission denied during installation
- **Solution**: Run PowerShell/Command Prompt as Administrator

**Issue**: Package installation fails
- **Solution**: Check your internet connection and try again. Some packages may require multiple attempts.

**Issue**: Java not found after installation
- **Solution**: Restart your terminal/PowerShell session, or add Java to your system PATH manually

### Verification Commands

```bash
# Check if winget is available
winget --version

# List installed packages
winget list Microsoft.OpenJDK
winget list OpenJS.NodeJS
winget list JetBrains.IntelliJIDEA

# Check environment variables
echo $env:JAVA_HOME
echo $env:PATH
```

## Customization

To modify the development environment:

1. Edit the `workload.yaml` file to add or remove packages
2. Use `winget search <package-name>` to find additional packages
3. Update package versions as needed

## Contributing

Feel free to submit issues or pull requests to improve this development environment setup.

## License

This project is open source. Please check individual software licenses for the installed components.