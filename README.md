# JetBrains DevBox Development Environment

This repository contains a JetBrains DevBox configuration for setting up a complete Java and Node.js development environment with IntelliJ IDEA Community Edition.

## What This Environment Includes

This development environment automatically installs:

- **Microsoft OpenJDK 21** - Latest Java Development Kit
- **Node.js LTS (v20.19.2)** - JavaScript runtime for modern development
- **IntelliJ IDEA Community Edition** - JetBrains IDE for Java development

## Prerequisites

Before you begin, ensure you have:

- **Windows 10/11** - This configuration uses Windows Package Manager (winget)
- **Windows Package Manager (winget)** - Usually pre-installed on Windows 10 (version 1809+) and Windows 11
- **JetBrains DevBox** - Download from [JetBrains website](https://www.jetbrains.com/remote-development/devbox/)

### Verify Prerequisites

1. **Check if winget is installed:**
   ```powershell
   winget --version
   ```
   If not installed, get it from the [Microsoft Store](https://aka.ms/getwinget) or [GitHub releases](https://github.com/microsoft/winget-cli/releases).

2. **Verify you have administrator privileges** (required for software installation)

## Installation Instructions

### Step 1: Install JetBrains DevBox

1. Download JetBrains DevBox from the [official website](https://www.jetbrains.com/remote-development/devbox/)
2. Follow the installation wizard to install DevBox on your system
3. Launch JetBrains DevBox after installation

### Step 2: Use This Configuration

1. **Clone or download this repository:**
   ```bash
   git clone https://github.com/blackchoey/jetbrains-devbox.git
   ```

2. **In JetBrains DevBox:**
   - Open JetBrains DevBox
   - Create a new DevBox instance
   - When prompted for configuration, select "Import from file"
   - Navigate to and select the `workload.yaml` file from this repository

3. **Start the environment:**
   - DevBox will automatically download and install all specified packages
   - This process may take several minutes depending on your internet connection
   - You'll see progress indicators for each package installation

### Step 3: Verify Installation

After the DevBox environment is created and all packages are installed:

1. **Verify Java installation:**
   ```powershell
   java -version
   ```
   Should show Microsoft OpenJDK 21

2. **Verify Node.js installation:**
   ```powershell
   node --version
   npm --version
   ```
   Should show Node.js v20.19.2 and corresponding npm version

3. **Launch IntelliJ IDEA:**
   - IntelliJ IDEA Community Edition should be available in your start menu
   - Or launch from command line: `idea`

## Usage

Once your DevBox environment is set up:

1. **Start your DevBox instance** through JetBrains DevBox interface
2. **Open IntelliJ IDEA** from within the DevBox environment
3. **Create or import your Java/Node.js projects**
4. **Begin development** with all tools pre-configured and ready to use

## Troubleshooting

### Common Issues

- **winget not found**: Ensure Windows Package Manager is installed and updated
- **Installation failures**: Run PowerShell as Administrator and try again
- **DevBox connection issues**: Check your network connection and Windows Defender settings

### Getting Help

- [JetBrains DevBox Documentation](https://www.jetbrains.com/help/devbox/)
- [Windows Package Manager Documentation](https://docs.microsoft.com/en-us/windows/package-manager/)

## Contributing

To modify this development environment:

1. Edit the `workload.yaml` file to add/remove packages
2. Test your changes in a new DevBox instance
3. Submit a pull request with your improvements

## License

This configuration is provided as-is for setting up development environments.