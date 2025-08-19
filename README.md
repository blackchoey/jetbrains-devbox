# JetBrains Development Environment

A pre-configured development environment setup for JetBrains IDEs with essential development tools.

## Overview

This repository provides an automated setup for a complete Java and Node.js development environment using JetBrains IntelliJ IDEA Community Edition. The configuration installs all necessary tools to get you up and running quickly.

## What Gets Installed

- **Microsoft OpenJDK 21** - Latest long-term support Java development kit
- **Node.js LTS (v20.19.2)** - JavaScript runtime for modern web development
- **IntelliJ IDEA Community Edition** - JetBrains' powerful IDE for Java development

## Prerequisites

Before you begin, ensure you have:

- **Windows 10/11** - This setup is designed for Windows systems
- **Windows Package Manager (winget)** - Usually pre-installed on Windows 10 (version 1709+) and Windows 11
- **Administrator privileges** - Required for software installation

### Verify winget installation

Open PowerShell or Command Prompt and run:
```bash
winget --version
```

If winget is not installed, download it from the [Microsoft Store](https://www.microsoft.com/store/productId/9NBLGGH4NNS1) or [GitHub releases](https://github.com/microsoft/winget-cli/releases).

## Installation Instructions

### Method 1: Using Windows Dev Box (Recommended)

If you're using Microsoft Dev Box or similar workload-based environment:

1. Clone this repository:
   ```bash
   git clone https://github.com/blackchoey/jetbrains-devbox.git
   cd jetbrains-devbox
   ```

2. Apply the workload configuration (this method depends on your Dev Box setup):
   ```bash
   # The workload.yaml will be automatically processed by your Dev Box environment
   ```

### Method 2: Manual Installation with winget

1. Clone this repository:
   ```bash
   git clone https://github.com/blackchoey/jetbrains-devbox.git
   cd jetbrains-devbox
   ```

2. Install each package manually using winget:

   ```bash
   # Install Microsoft OpenJDK 21
   winget install Microsoft.OpenJDK.21

   # Install Node.js LTS (specific version)
   winget install OpenJS.NodeJS.LTS --version 20.19.2

   # Install IntelliJ IDEA Community Edition
   winget install JetBrains.IntelliJIDEA.Community
   ```

3. Restart your terminal or log out and back in to refresh your PATH environment variables.

## Verification

After installation, verify that everything is working correctly:

1. **Check Java installation:**
   ```bash
   java --version
   ```
   Expected output: `openjdk 21.x.x`

2. **Check Node.js installation:**
   ```bash
   node --version
   npm --version
   ```
   Expected output: `v20.19.2` and npm version

3. **Launch IntelliJ IDEA:**
   - Open the Start menu and search for "IntelliJ IDEA Community Edition"
   - Or run from command line: `idea`

## Getting Started

1. **Launch IntelliJ IDEA Community Edition**
2. **Create a new project** or **open an existing one**
3. **Configure Project SDK:**
   - Go to File → Project Structure → Project
   - Set Project SDK to the installed OpenJDK 21
4. **For Node.js projects:**
   - Install the Node.js plugin if not already installed
   - Configure Node.js interpreter in Settings → Languages & Frameworks → Node.js

## Troubleshooting

### Common Issues

**winget not found:**
- Install winget from Microsoft Store or GitHub releases
- Restart your terminal after installation

**Installation fails with permission errors:**
- Run your terminal as Administrator
- Ensure Windows Package Manager has the necessary permissions

**Java/Node not found after installation:**
- Restart your terminal or IDE
- Log out and back in to refresh environment variables
- Manually add installation paths to your PATH environment variable if needed

**IntelliJ IDEA won't start:**
- Ensure Java is properly installed and accessible
- Try running from command line to see error messages
- Check Windows Event Viewer for detailed error information

### Default Installation Paths

- **OpenJDK 21:** `C:\Program Files\Microsoft\jdk-21.x.x.x-hotspot\`
- **Node.js:** `C:\Program Files\nodejs\`
- **IntelliJ IDEA:** `C:\Users\{username}\AppData\Local\JetBrains\Toolbox\apps\IDEA-C\`

## Contributing

Feel free to submit issues or pull requests to improve this development environment setup.

## License

This project is provided as-is for setting up development environments. Please refer to the individual software licenses for the installed packages.