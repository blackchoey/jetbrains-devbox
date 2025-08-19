# JetBrains Development Environment

A streamlined development environment setup for JetBrains development using Windows Package Manager (winget). This repository provides an automated way to install essential development tools including Java, Node.js, and IntelliJ IDEA Community Edition.

## Overview

This project uses a `workload.yaml` configuration file to define and automate the installation of development tools commonly used in JetBrains-based development workflows. The setup is designed to get developers up and running quickly with a consistent development environment.

## Prerequisites

### System Requirements
- **Operating System**: Windows 10 version 1809 (build 17763) or later, or Windows 11
- **Windows Package Manager (winget)**: Pre-installed on Windows 11 and Windows 10 version 1809+
- **Administrator privileges**: Required for installing software packages

### Verify winget Installation
Before proceeding, ensure that winget is available on your system:

```cmd
winget --version
```

If winget is not installed, you can install it from the [Microsoft Store](https://aka.ms/getwinget) or download it from the [GitHub releases page](https://github.com/microsoft/winget-cli/releases).

## Installation Instructions

### Method 1: Manual Installation Using winget

You can install each component individually using the following winget commands:

1. **Install Microsoft OpenJDK 21**
   ```cmd
   winget install Microsoft.OpenJDK.21
   ```

2. **Install Node.js LTS (v20.19.2)**
   ```cmd
   winget install OpenJS.NodeJS.LTS --version 20.19.2
   ```

3. **Install IntelliJ IDEA Community Edition**
   ```cmd
   winget install JetBrains.IntelliJIDEA.Community
   ```

### Method 2: Using the Workload Configuration

If you have a tool that supports workload.yaml files (such as Microsoft Dev Box or similar development environment tools), you can use the provided `workload.yaml` file directly:

1. **Clone this repository**
   ```cmd
   git clone https://github.com/blackchoey/jetbrains-devbox.git
   cd jetbrains-devbox
   ```

2. **Apply the workload configuration**
   
   The specific command depends on your development environment tool. For example:
   ```cmd
   # Example for tools that support workload.yaml
   devbox apply workload.yaml
   ```

## What Gets Installed

This development environment includes the following software:

| Software | Version | Purpose |
|----------|---------|---------|
| **Microsoft OpenJDK 21** | Latest | Java Development Kit for Java applications |
| **Node.js LTS** | 20.19.2 | JavaScript runtime for web development and tooling |
| **IntelliJ IDEA Community Edition** | Latest | Integrated Development Environment for Java and other languages |

## Post-Installation Setup

After installation, you may want to:

1. **Verify Java installation**
   ```cmd
   java --version
   javac --version
   ```

2. **Verify Node.js installation**
   ```cmd
   node --version
   npm --version
   ```

3. **Launch IntelliJ IDEA**
   - Open IntelliJ IDEA from the Start menu
   - Configure your preferred settings and plugins
   - Set up your project workspace

## Usage

### For Java Development
- Use the installed OpenJDK 21 for Java projects
- IntelliJ IDEA Community Edition provides excellent Java development support
- Create new Java projects or import existing ones

### For Web Development
- Use Node.js for running JavaScript applications and build tools
- npm is included with Node.js for package management
- IntelliJ IDEA supports JavaScript and TypeScript development

### For Full-Stack Development
- Combine Java backend development with Node.js frontend tooling
- Use IntelliJ IDEA's built-in terminal for command-line operations
- Leverage the IDE's integrated Git support for version control

## Troubleshooting

### Common Issues

**Issue**: `winget` command not found
- **Solution**: Ensure you're running Windows 10 version 1809+ or Windows 11. Install winget from the Microsoft Store if needed.

**Issue**: Installation fails due to permissions
- **Solution**: Run your command prompt or PowerShell as Administrator.

**Issue**: Package not found or version conflicts
- **Solution**: Update winget sources with `winget source update` and try again.

**Issue**: IntelliJ IDEA doesn't detect Java
- **Solution**: After installation, restart IntelliJ IDEA and configure the JDK path in Settings → Build, Execution, Deployment → Build Tools → Gradle/Maven.

### Verification Commands

Run these commands to verify successful installation:

```cmd
# Check all installed packages
winget list

# Check specific packages
winget list Microsoft.OpenJDK.21
winget list OpenJS.NodeJS.LTS
winget list JetBrains.IntelliJIDEA.Community
```

## Contributing

To modify the development environment:

1. Edit the `workload.yaml` file to add, remove, or update packages
2. Test your changes on a clean system
3. Update this README if you add new prerequisites or change installation steps

## License

This project configuration is provided as-is for setting up development environments. Please refer to individual software licenses for the installed packages:

- [Microsoft OpenJDK License](https://docs.microsoft.com/en-us/java/openjdk/)
- [Node.js License](https://github.com/nodejs/node/blob/master/LICENSE)
- [IntelliJ IDEA Community Edition License](https://github.com/JetBrains/intellij-community/blob/master/LICENSE.txt)

## Support

For issues related to:
- **This configuration**: Open an issue in this repository
- **winget**: Check the [winget documentation](https://docs.microsoft.com/en-us/windows/package-manager/)
- **Individual software**: Refer to the respective software's official documentation and support channels