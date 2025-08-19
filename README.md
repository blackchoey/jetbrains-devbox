# JetBrains Development Environment

A Microsoft Dev Box workload configuration for setting up a complete JetBrains development environment with Java and Node.js support.

## Overview

This repository contains a pre-configured workload that automatically installs and sets up a development environment optimized for JetBrains IDEs. The environment includes essential tools for Java and Node.js development.

## What Gets Installed

This workload will automatically install the following software:

- **Microsoft OpenJDK 21** - Latest Java Development Kit
- **Node.js LTS (v20.19.2)** - JavaScript runtime for Node.js development
- **IntelliJ IDEA Community Edition** - JetBrains IDE for Java development

## Prerequisites

Before using this workload, ensure you have:

1. **Microsoft Dev Box access** - You need access to Microsoft Dev Box service
2. **Azure subscription** - Required for Dev Box usage
3. **Appropriate permissions** - Ability to create and manage Dev Boxes
4. **Network connectivity** - Stable internet connection for downloading packages

## Installation Instructions

### Method 1: Using Microsoft Dev Box Portal

1. **Access the Dev Box Portal**
   - Navigate to [Microsoft Dev Box Portal](https://devbox.microsoft.com)
   - Sign in with your Azure credentials

2. **Create a New Dev Box**
   - Click "New Dev Box" or similar option
   - Choose your dev box pool and configuration

3. **Apply This Workload**
   - During dev box creation, look for workload or customization options
   - Upload or reference this `workload.yaml` file
   - Or configure your dev box pool to use this workload

4. **Wait for Provisioning**
   - The dev box will be created and software will be automatically installed
   - This process typically takes 10-30 minutes depending on your configuration

### Method 2: Using Azure CLI

If you have Azure CLI and appropriate permissions:

```bash
# Clone this repository
git clone https://github.com/blackchoey/jetbrains-devbox.git
cd jetbrains-devbox

# Deploy using your dev box configuration (adjust commands based on your setup)
# Note: Specific commands depend on your Azure Dev Box configuration
```

### Method 3: Manual Application to Existing Dev Box

If you already have a Dev Box:

1. **Download the workload file**
   ```bash
   wget https://raw.githubusercontent.com/blackchoey/jetbrains-devbox/main/workload.yaml
   ```

2. **Apply the workload** (method depends on your Dev Box configuration)
   - Consult your Dev Box administrator for the specific process
   - This may involve updating your dev box pool configuration

## Usage

Once your Dev Box is provisioned with this workload:

### Verify Installation

1. **Check Java Installation**
   ```bash
   java -version
   # Should show Microsoft OpenJDK 21
   ```

2. **Check Node.js Installation**
   ```bash
   node --version
   # Should show v20.19.2
   
   npm --version
   # Should show the corresponding npm version
   ```

3. **Launch IntelliJ IDEA**
   - Look for IntelliJ IDEA Community Edition in your Start Menu
   - Or run from command line: `idea`

### Getting Started with Development

1. **Java Development**
   - Open IntelliJ IDEA
   - Create a new Java project or open an existing one
   - The IDE should automatically detect the installed JDK 21

2. **Node.js Development**
   - Use IntelliJ IDEA or any text editor
   - Initialize a new Node.js project: `npm init`
   - Install dependencies: `npm install`

## Troubleshooting

### Common Issues

**Issue: Software not found after installation**
- **Solution**: Restart your Dev Box session or log out and log back in
- **Alternative**: Check if the software was installed in a different location

**Issue: Java not recognized**
- **Solution**: Verify JAVA_HOME environment variable is set correctly
- **Check**: Run `echo $JAVA_HOME` (Linux/Mac) or `echo %JAVA_HOME%` (Windows)

**Issue: IntelliJ IDEA won't start**
- **Solution**: Check if sufficient memory is allocated to your Dev Box
- **Alternative**: Try running from command line to see error messages

**Issue: Node.js version mismatch**
- **Solution**: The workload installs Node.js LTS v20.19.2. If you need a different version, consider using nvm (Node Version Manager)

### Getting Help

If you encounter issues:

1. **Check Dev Box logs** - Look for installation logs in your Dev Box
2. **Verify prerequisites** - Ensure all prerequisites are met
3. **Contact support** - Reach out to your Dev Box administrator
4. **File an issue** - Create an issue in this repository for workload-specific problems

## Customization

To customize this workload for your needs:

1. **Fork this repository**
2. **Edit `workload.yaml`** to add or modify software packages
3. **Update package versions** as needed
4. **Test your changes** in a development environment first

### Adding Additional Software

To add more software, extend the `tasks` section in `workload.yaml`:

```yaml
tasks:
  - name: winget
    description: Install Git
    parameters:
      package: Git.Git
  - name: winget
    description: Install Docker Desktop
    parameters:
      package: Docker.DockerDesktop
```

## Contributing

We welcome contributions! To contribute:

1. Fork this repository
2. Create a feature branch (`git checkout -b feature/your-feature`)
3. Make your changes
4. Test thoroughly
5. Commit your changes (`git commit -am 'Add some feature'`)
6. Push to the branch (`git push origin feature/your-feature`)
7. Create a Pull Request

## License

This project is open source. Please check the repository for license information.

## Support

For support and questions:
- **Repository Issues**: [Create an issue](https://github.com/blackchoey/jetbrains-devbox/issues)
- **Dev Box Documentation**: [Microsoft Dev Box Documentation](https://docs.microsoft.com/en-us/azure/dev-box/)

---

**Note**: This workload is designed for Microsoft Dev Box environments. Adaptation may be required for other platforms.