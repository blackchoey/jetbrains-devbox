# JetBrains Development Environment

A pre-configured development environment setup for Java and Node.js development using JetBrains tools.

## Overview

This repository contains a workload configuration that automatically installs and configures a complete development environment including:

- **Microsoft OpenJDK 21** - Latest Long Term Support Java runtime
- **Node.js LTS (v20.19.2)** - JavaScript runtime for modern web development
- **IntelliJ IDEA Community Edition** - Powerful IDE for Java and web development

## Prerequisites

Before using this development environment, ensure you have:

- **Windows 10/11** - This configuration uses `winget` package manager
- **Windows Package Manager (winget)** - Usually pre-installed on Windows 11, or [download here](https://github.com/microsoft/winget-cli)
- **Administrator privileges** - Required for software installation
- **Internet connection** - For downloading packages

## Installation Instructions

### Option 1: Using DevBox (Recommended)

If you're using JetBrains DevBox or a compatible development environment platform:

1. **Clone this repository:**
   ```bash
   git clone https://github.com/blackchoey/jetbrains-devbox.git
   cd jetbrains-devbox
   ```

2. **Apply the workload configuration:**
   ```bash
   # Follow your platform's specific instructions for applying workload.yaml
   # This will typically involve a command like:
   devbox apply workload.yaml
   ```

### Option 2: Manual Installation

If you prefer to install components manually using the configuration as a guide:

1. **Install Microsoft OpenJDK 21:**
   ```cmd
   winget install Microsoft.OpenJDK.21
   ```

2. **Install Node.js LTS:**
   ```cmd
   winget install OpenJS.NodeJS.LTS --version 20.19.2
   ```

3. **Install IntelliJ IDEA Community Edition:**
   ```cmd
   winget install JetBrains.IntelliJIDEA.Community
   ```

### Option 3: Batch Installation Script

Run all installations at once using Windows Command Prompt or PowerShell:

```cmd
winget install Microsoft.OpenJDK.21
winget install OpenJS.NodeJS.LTS --version 20.19.2
winget install JetBrains.IntelliJIDEA.Community
```

## Verification

After installation, verify your environment:

1. **Check Java installation:**
   ```cmd
   java -version
   ```
   Expected output: Java 21.x.x (Microsoft build)

2. **Check Node.js installation:**
   ```cmd
   node --version
   npm --version
   ```
   Expected output: v20.19.2 and npm version

3. **Launch IntelliJ IDEA:**
   - Find "IntelliJ IDEA Community Edition" in your Start menu
   - Or run from command line: `idea64.exe`

## Usage

### Getting Started with Your Development Environment

1. **Open IntelliJ IDEA** and create a new project
2. **Configure Java SDK:**
   - Go to File → Project Structure → Project Settings → Project
   - Set Project SDK to the installed OpenJDK 21
3. **For Node.js projects:**
   - Install the Node.js plugin in IntelliJ IDEA
   - Configure Node.js interpreter in Settings → Languages & Frameworks → Node.js

### Development Workflow

- **Java Development:** Use the pre-configured OpenJDK 21 for all Java projects
- **Web Development:** Leverage Node.js LTS for modern JavaScript/TypeScript development
- **Full-Stack Projects:** Combine both Java backend and Node.js frontend technologies

## Troubleshooting

### Common Issues

**winget command not found:**
- Install Windows Package Manager from the Microsoft Store or [GitHub releases](https://github.com/microsoft/winget-cli/releases)

**Installation permission errors:**
- Run Command Prompt or PowerShell as Administrator
- Check Windows execution policy: `Set-ExecutionPolicy RemoteSigned`

**Java not found after installation:**
- Restart your command prompt/terminal
- Check if JAVA_HOME environment variable is set correctly
- Manually add Java to your PATH if needed

**Node.js version conflicts:**
- Use `node --version` to verify the correct version is installed
- Consider using a Node version manager if you need multiple versions

## Customization

To modify this development environment:

1. Edit the `workload.yaml` file
2. Add or remove packages as needed
3. Update version numbers for specific requirements
4. Commit your changes to maintain your custom configuration

## Support

For issues related to:
- **This configuration:** Open an issue in this repository
- **winget:** Check the [Windows Package Manager documentation](https://docs.microsoft.com/en-us/windows/package-manager/)
- **IntelliJ IDEA:** Visit [JetBrains support](https://www.jetbrains.com/support/)
- **Java/Node.js:** Refer to their respective official documentation

## License

This configuration is provided as-is for development environment setup. Please refer to individual software licenses for the installed components.