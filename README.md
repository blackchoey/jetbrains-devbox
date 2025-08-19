# JetBrains Development Environment

A pre-configured development environment setup for JetBrains-based development workflows. This repository contains a workload configuration that automatically installs and configures essential development tools.

## What Gets Installed

This development environment includes:

- **Microsoft OpenJDK 21** - Latest LTS Java Development Kit
- **Node.js LTS (v20.19.2)** - JavaScript runtime for modern web development
- **IntelliJ IDEA Community Edition** - Free, open-source IDE from JetBrains

## Prerequisites

### System Requirements
- **Windows 10/11** - This configuration uses Windows Package Manager (winget)
- **Administrator privileges** - Required for software installation
- **Internet connection** - Needed to download packages

### Required Tools
You need one of the following to process the workload configuration:

#### Option 1: Microsoft Dev Box (Recommended)
- Access to Microsoft Dev Box service
- Valid Azure subscription with Dev Box configured

#### Option 2: Manual Installation with winget
- Windows Package Manager (winget) installed
- PowerShell or Command Prompt with administrator privileges

## Installation Instructions

### Method 1: Using Microsoft Dev Box

1. **Clone this repository** to your Dev Box:
   ```bash
   git clone https://github.com/blackchoey/jetbrains-devbox.git
   cd jetbrains-devbox
   ```

2. **Apply the workload configuration**:
   - The `workload.yaml` file will be automatically processed by the Dev Box service
   - Wait for the provisioning process to complete (typically 10-15 minutes)

3. **Verify installation**:
   - Check that all applications are available in the Start menu
   - Launch IntelliJ IDEA to confirm proper installation

### Method 2: Manual Installation with winget

If you're not using Microsoft Dev Box, you can install the packages manually:

1. **Open PowerShell as Administrator**

2. **Clone this repository**:
   ```powershell
   git clone https://github.com/blackchoey/jetbrains-devbox.git
   cd jetbrains-devbox
   ```

3. **Install each package using winget**:
   ```powershell
   # Install Microsoft OpenJDK 21
   winget install Microsoft.OpenJDK.21

   # Install Node.js LTS (specific version)
   winget install OpenJS.NodeJS.LTS --version 20.19.2

   # Install IntelliJ IDEA Community Edition
   winget install JetBrains.IntelliJIDEA.Community
   ```

4. **Restart your terminal** to ensure all PATH changes take effect

## Post-Installation Setup

### Java Configuration
1. Verify Java installation:
   ```bash
   java --version
   ```
2. Set JAVA_HOME environment variable if needed

### Node.js Configuration
1. Verify Node.js installation:
   ```bash
   node --version
   npm --version
   ```
2. Consider updating npm to the latest version:
   ```bash
   npm install -g npm@latest
   ```

### IntelliJ IDEA Setup
1. Launch IntelliJ IDEA from the Start menu
2. Complete the initial setup wizard
3. Install any additional plugins as needed for your projects

## Usage

Once installed, you'll have a complete development environment ready for:

- **Java Development** - Spring Boot, Maven/Gradle projects
- **JavaScript/TypeScript Development** - React, Angular, Vue.js projects
- **Full-stack Development** - Combined Java backend + Node.js frontend projects

## Troubleshooting

### Common Issues

**Installation fails with permission errors:**
- Ensure you're running PowerShell/Command Prompt as Administrator
- Check Windows User Account Control (UAC) settings

**Package not found errors:**
- Update winget package sources: `winget source update`
- Verify internet connectivity

**IntelliJ IDEA won't start:**
- Check Java installation with `java --version`
- Restart your computer after installation

**Node.js command not found:**
- Restart your terminal/command prompt
- Check PATH environment variable includes Node.js installation directory

### Getting Help

1. **Check installation logs** in the Windows Event Viewer
2. **Verify winget functionality** with `winget --version`
3. **Review Dev Box documentation** if using Microsoft Dev Box service

## Customization

To modify the installed packages:

1. Edit the `workload.yaml` file
2. Add or remove packages from the `tasks` section
3. Follow the same installation procedure

Example of adding a new package:
```yaml
- name: winget
  description: Install Visual Studio Code
  parameters:
    package: Microsoft.VisualStudioCode
```

## Contributing

Feel free to submit issues or pull requests to improve this development environment configuration.

## License

This project is available under the MIT License. See individual software licenses for installed packages.