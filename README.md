# JetBrains Development Environment

A pre-configured development environment setup for JetBrains development, including essential tools and dependencies for Java and Node.js development.

## Overview

This repository provides an automated setup for a complete JetBrains development environment using Windows Package Manager (winget). It installs all the necessary tools to get started with Java and Node.js development using IntelliJ IDEA.

## Prerequisites

Before running the installation, ensure you have:

- **Windows 10 version 1809 (build 17763) or later**, or **Windows 11**
- **Windows Package Manager (winget)** installed
  - Usually comes pre-installed with Windows 11 and recent Windows 10 updates
  - If not installed, get it from the [Microsoft Store](https://www.microsoft.com/store/productId/9NBLGGH4NNS1)
- **Administrator privileges** for installing packages

## What Gets Installed

This development environment includes:

| Tool | Version | Purpose |
|------|---------|---------|
| **Microsoft OpenJDK 21** | Latest | Java runtime and development kit for building Java applications |
| **Node.js LTS** | 20.19.2 | JavaScript runtime for building web applications and tools |
| **IntelliJ IDEA Community Edition** | Latest | Integrated Development Environment (IDE) for Java and other languages |

## Installation Instructions

### Option 1: Manual Installation (Recommended)

1. **Open PowerShell or Command Prompt as Administrator**
   - Right-click on Start menu → "Windows PowerShell (Admin)" or "Command Prompt (Admin)"

2. **Install Microsoft OpenJDK 21**
   ```cmd
   winget install Microsoft.OpenJDK.21
   ```

3. **Install Node.js LTS**
   ```cmd
   winget install OpenJS.NodeJS.LTS --version 20.19.2
   ```

4. **Install IntelliJ IDEA Community Edition**
   ```cmd
   winget install JetBrains.IntelliJIDEA.Community
   ```

5. **Verify Installation**
   - Open a new command prompt and verify Java installation:
     ```cmd
     java --version
     ```
   - Verify Node.js installation:
     ```cmd
     node --version
     npm --version
     ```
   - Launch IntelliJ IDEA from Start menu

### Option 2: Using the Workload Configuration

If you have a tool that supports the workload.yaml format, you can use the provided configuration file:

1. **Clone this repository**
   ```cmd
   git clone https://github.com/blackchoey/jetbrains-devbox.git
   cd jetbrains-devbox
   ```

2. **Apply the workload configuration**
   - Use your workload management tool to process the `workload.yaml` file
   - The exact command depends on your workload management system

## Post-Installation Setup

### Configure IntelliJ IDEA

1. **Launch IntelliJ IDEA**
2. **Set up JDK**
   - Go to File → Project Structure → SDKs
   - Add the installed OpenJDK 21 (usually located in `C:\Program Files\Microsoft\jdk-21.x.x`)
3. **Install useful plugins** (optional)
   - Go to File → Settings → Plugins
   - Consider installing: Git, Node.js, JavaScript Debugger

### Verify Node.js Setup

1. **Test Node.js installation**
   ```cmd
   node --version
   npm --version
   ```

2. **Update npm to latest version** (optional)
   ```cmd
   npm install -g npm@latest
   ```

## Troubleshooting

### Common Issues

**winget not found**
- Ensure Windows is up to date
- Install App Installer from Microsoft Store
- Restart your terminal

**Permission denied errors**
- Run the command prompt as Administrator
- Check Windows Defender or antivirus software

**JDK not detected in IntelliJ**
- Manually add JDK path in IntelliJ IDEA Project Structure
- Check environment variables (JAVA_HOME)

**Node.js command not found**
- Restart your terminal after installation
- Check if Node.js was added to PATH environment variable

### Getting Help

- Check the [winget documentation](https://docs.microsoft.com/en-us/windows/package-manager/winget/)
- Visit [JetBrains IntelliJ IDEA documentation](https://www.jetbrains.com/help/idea/)
- Review [Node.js installation guide](https://nodejs.org/en/download/)

## License

This configuration is provided as-is for development environment setup purposes.