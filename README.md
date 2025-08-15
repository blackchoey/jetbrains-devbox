# JetBrains Development Environment

A pre-configured development environment setup for JetBrains development using Windows Package Manager (winget).

## Overview

This repository contains a `workload.yaml` configuration file that automatically installs and configures essential development tools for Java and Node.js development using JetBrains IntelliJ IDEA.

## Prerequisites

Before using this development environment setup, ensure you have:

- **Windows 10 (version 1809 or later) or Windows 11**
- **Windows Package Manager (winget)** installed
  - Usually pre-installed on Windows 11
  - For Windows 10, install from [Microsoft Store](https://www.microsoft.com/store/productId/9NBLGGH4NNS1) or [GitHub releases](https://github.com/microsoft/winget-cli/releases)

### Verify winget Installation

Open PowerShell or Command Prompt and run:
```cmd
winget --version
```

If winget is not recognized, install it from the links above.

## Installation Instructions

### Option 1: Manual Installation (Recommended)

Follow these steps to manually install each component:

1. **Install Microsoft OpenJDK 21:**
   ```cmd
   winget install Microsoft.OpenJDK.21
   ```

2. **Install Node.js LTS (version 20.19.2):**
   ```cmd
   winget install OpenJS.NodeJS.LTS --version 20.19.2
   ```

3. **Install IntelliJ IDEA Community Edition:**
   ```cmd
   winget install JetBrains.IntelliJIDEA.Community
   ```

### Option 2: Using Workload Configuration

If you have a tool that supports the workload.yaml format:

1. Clone this repository:
   ```cmd
   git clone https://github.com/blackchoey/jetbrains-devbox.git
   cd jetbrains-devbox
   ```

2. Run your workload management tool with the configuration:
   ```cmd
   # Replace with your specific workload tool command
   your-workload-tool apply workload.yaml
   ```

## What Gets Installed

This development environment includes:

| Tool | Version | Description |
|------|---------|-------------|
| **Microsoft OpenJDK 21** | Latest | Java Development Kit for modern Java development |
| **Node.js LTS** | 20.19.2 | JavaScript runtime for web development |
| **IntelliJ IDEA Community** | Latest | JetBrains IDE for Java, Kotlin, and web development |

## Post-Installation Setup

After installation is complete:

1. **Verify Java Installation:**
   ```cmd
   java --version
   ```

2. **Verify Node.js Installation:**
   ```cmd
   node --version
   npm --version
   ```

3. **Launch IntelliJ IDEA:**
   - Open from Start Menu or run `idea64.exe` from installation directory
   - Configure JDK: File → Project Structure → SDKs → Add → JDK → Select OpenJDK 21 installation

## Troubleshooting

### Common Issues

**Problem: winget command not found**
- Solution: Install Windows Package Manager from Microsoft Store or GitHub releases

**Problem: Installation fails with permission errors**
- Solution: Run PowerShell or Command Prompt as Administrator

**Problem: Specific version not found**
- Solution: Check available versions with `winget search <package-name>`

**Problem: Java not found after installation**
- Solution: Restart your terminal/IDE and verify JAVA_HOME environment variable

### Getting Help

- Check winget documentation: `winget --help`
- Verify package availability: `winget search <package-name>`
- List installed packages: `winget list`

## Configuration Details

The `workload.yaml` file uses schema version 1.0 and defines tasks for installing development tools via winget. Each task specifies:
- Package identifier (e.g., `Microsoft.OpenJDK.21`)
- Optional version constraints
- Installation parameters

## Contributing

To modify the development environment:

1. Edit `workload.yaml` to add/remove packages
2. Update this README with any new installation steps
3. Test the configuration on a clean Windows system

## License

This configuration is provided as-is for setting up JetBrains development environments.