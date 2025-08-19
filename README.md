# JetBrains Development Environment

A pre-configured development environment setup for Java and Node.js development using JetBrains tools.

## Overview

This repository contains a devbox configuration that automatically installs and configures a complete development environment including:

- **Microsoft OpenJDK 21** - Latest LTS Java Development Kit
- **Node.js LTS (v20.19.2)** - JavaScript runtime for modern web development  
- **IntelliJ IDEA Community Edition** - JetBrains IDE for Java development

## Prerequisites

Before getting started, ensure you have:

- **Windows 10/11** - This configuration uses Windows Package Manager (winget)
- **Windows Package Manager (winget)** - Usually pre-installed on Windows 11, or install from Microsoft Store
- **DevBox** - Environment orchestration tool

### Installing Prerequisites

#### 1. Install Windows Package Manager (winget)
If not already installed:
```powershell
# Install from Microsoft Store or download from GitHub
# https://github.com/microsoft/winget-cli/releases
```

#### 2. Install DevBox
```powershell
# Install DevBox CLI
winget install Microsoft.DevBox
```

## Installation

### Quick Start

1. **Clone this repository:**
   ```bash
   git clone https://github.com/blackchoey/jetbrains-devbox.git
   cd jetbrains-devbox
   ```

2. **Run the devbox setup:**
   ```powershell
   devbox run
   ```

### Step-by-Step Installation

1. **Clone the repository:**
   ```bash
   git clone https://github.com/blackchoey/jetbrains-devbox.git
   cd jetbrains-devbox
   ```

2. **Review the configuration:**
   ```bash
   cat workload.yaml
   ```

3. **Execute the installation:**
   ```powershell
   # This will install all packages defined in workload.yaml
   devbox run
   ```

4. **Verify installation:**
   ```powershell
   # Check Java installation
   java -version
   
   # Check Node.js installation  
   node --version
   npm --version
   
   # IntelliJ IDEA should be available in Start Menu
   ```

## What Gets Installed

| Tool | Version | Purpose |
|------|---------|---------|
| Microsoft OpenJDK | 21 (LTS) | Java development and runtime |
| Node.js | 20.19.2 (LTS) | JavaScript runtime and package management |
| IntelliJ IDEA | Community Edition | Integrated development environment |

## Usage

After installation, you can:

1. **Start IntelliJ IDEA** from the Start Menu or run `idea` from command line
2. **Create Java projects** using the installed OpenJDK 21
3. **Develop Node.js applications** using the installed Node.js runtime
4. **Use npm** for JavaScript package management

## Troubleshooting

### Common Issues

**Issue: winget not found**
```powershell
# Solution: Install Windows Package Manager
# Download from: https://github.com/microsoft/winget-cli/releases
```

**Issue: DevBox command not recognized**
```powershell
# Solution: Install DevBox CLI
winget install Microsoft.DevBox
# Then restart your terminal
```

**Issue: Installation fails due to permissions**
```powershell
# Solution: Run PowerShell as Administrator
# Right-click PowerShell → "Run as administrator"
```

**Issue: Java not found after installation**
```powershell
# Solution: Restart terminal or check PATH
echo $env:PATH
# Java should be in: C:\Program Files\Microsoft\jdk-21.*\bin
```

### Getting Help

If you encounter issues:

1. Check the [DevBox documentation](https://docs.microsoft.com/en-us/windows/dev-environment/)
2. Verify winget is working: `winget --version`
3. Check Windows version compatibility
4. Open an issue in this repository

## Contributing

Feel free to submit issues and enhancement requests!

## License

This project is open source and available under the [MIT License](LICENSE).