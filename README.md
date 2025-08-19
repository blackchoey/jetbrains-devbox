# JetBrains Development Environment

A streamlined development environment setup for JetBrains development workflows using Windows Package Manager (winget).

## Overview

This repository contains a workload configuration that automatically installs and configures essential development tools for JetBrains-based development environments. The setup includes Java development kit, Node.js runtime, and IntelliJ IDEA Community Edition.

## Prerequisites

Before installing this development environment, ensure you have:

- **Windows 10 version 1709 (build 16299) or later** or **Windows 11**
- **Windows Package Manager (winget)** installed
  - Usually pre-installed on Windows 11 and recent Windows 10 updates
  - If not available, install from [Microsoft Store](https://www.microsoft.com/store/productId/9NBLGGH4NNS1) or [GitHub releases](https://github.com/microsoft/winget-cli/releases)
- **Administrator privileges** (required for software installation)
- **Internet connection** (for downloading packages)

## What Gets Installed

This development environment includes:

| Software | Version | Purpose |
|----------|---------|---------|
| **Microsoft OpenJDK 21** | Latest | Java development and runtime |
| **Node.js LTS** | 20.19.2 | JavaScript/TypeScript development and npm package management |
| **IntelliJ IDEA Community Edition** | Latest | Primary IDE for Java, Kotlin, and other JetBrains-supported languages |

## Installation Instructions

### Method 1: Using Windows Dev Home (Recommended)

1. **Install Windows Dev Home** (if not already installed):
   ```powershell
   winget install Microsoft.WindowsDevHome
   ```

2. **Clone this repository**:
   ```bash
   git clone https://github.com/blackchoey/jetbrains-devbox.git
   cd jetbrains-devbox
   ```

3. **Open Windows Dev Home** and navigate to the "Machine configuration" section

4. **Import the workload**:
   - Click "Set up your machine"
   - Select "Configuration file"
   - Browse and select the `workload.yaml` file from this repository
   - Review the packages to be installed
   - Click "Set up" to begin installation

### Method 2: Manual Installation via Command Line

If you prefer to install packages manually using winget:

1. **Open PowerShell as Administrator**

2. **Install Microsoft OpenJDK 21**:
   ```powershell
   winget install Microsoft.OpenJDK.21
   ```

3. **Install Node.js LTS**:
   ```powershell
   winget install OpenJS.NodeJS.LTS --version 20.19.2
   ```

4. **Install IntelliJ IDEA Community Edition**:
   ```powershell
   winget install JetBrains.IntelliJIDEA.Community
   ```

### Method 3: Using the Workload File Directly

If you have a compatible workload processor:

1. **Clone the repository**:
   ```bash
   git clone https://github.com/blackchoey/jetbrains-devbox.git
   cd jetbrains-devbox
   ```

2. **Process the workload file** with your preferred tool that supports the workload schema version 1.0

## Post-Installation Setup

After installation completes:

1. **Verify Java installation**:
   ```bash
   java --version
   ```

2. **Verify Node.js installation**:
   ```bash
   node --version
   npm --version
   ```

3. **Launch IntelliJ IDEA**:
   - Find "IntelliJ IDEA Community Edition" in Start Menu
   - Complete the initial setup wizard
   - Configure JDK: Go to File → Project Structure → SDKs and add the installed OpenJDK 21

4. **Configure environment variables** (if needed):
   - `JAVA_HOME` should point to the OpenJDK installation directory
   - `PATH` should include Java and Node.js binary directories

## Usage

Once installed, you can:

- **Create new Java projects** in IntelliJ IDEA with OpenJDK 21
- **Develop Node.js applications** with the latest LTS version
- **Use npm** for JavaScript/TypeScript package management
- **Import existing projects** into IntelliJ IDEA
- **Develop Kotlin, Scala, or other JVM-based applications**

## Troubleshooting

### Common Issues

**winget not found**:
- Install Windows Package Manager from Microsoft Store
- Restart your terminal/PowerShell session
- Ensure you're using Windows 10 build 16299 or later

**Installation fails with access denied**:
- Run PowerShell as Administrator
- Ensure Windows Defender or antivirus isn't blocking the installation

**Java not found after installation**:
- Restart your terminal/command prompt
- Check if `JAVA_HOME` environment variable is set correctly
- Verify the installation path in Windows Settings → Apps

**IntelliJ IDEA doesn't detect Java**:
- Open IntelliJ IDEA
- Go to File → Project Structure → SDKs
- Click "+" and browse to the Java installation directory
- Typically located at: `C:\Program Files\Microsoft\jdk-21.x.x-hotspot\`

**Node.js command not found**:
- Restart your terminal
- Check if Node.js is in your PATH environment variable
- Reinstall Node.js if the issue persists

### Getting Help

If you encounter issues:

1. **Check winget logs**: Run `winget --info` for diagnostic information
2. **Verify package availability**: Run `winget search <package-name>` to confirm packages exist
3. **Check system requirements**: Ensure your Windows version supports all packages
4. **Report issues**: Create an issue in this repository with detailed error messages

## Customization

To customize this development environment:

1. **Fork this repository**
2. **Edit `workload.yaml`** to add/remove packages or change versions
3. **Update the README.md** to reflect your changes
4. **Test your configuration** before sharing

### Adding More Packages

To add additional development tools, append to the `tasks` section in `workload.yaml`:

```yaml
- name: winget
  description: Install your package
  parameters:
    package: Publisher.PackageName
    version: x.y.z  # optional
```

## Contributing

Contributions are welcome! Please:

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Test the workload configuration
5. Submit a pull request

## License

This project is open source. Please check the repository for license details.

## Related Projects

- [Windows Package Manager (winget)](https://github.com/microsoft/winget-cli)
- [Windows Dev Home](https://github.com/microsoft/devhome)
- [JetBrains Toolbox](https://www.jetbrains.com/toolbox-app/)