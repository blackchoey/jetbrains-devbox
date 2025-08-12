# JetBrains Development Environment

A Microsoft Dev Box workload configuration for setting up a complete JetBrains development environment with Java and Node.js support.

## Overview

This repository contains a Dev Box workload configuration that automatically installs and configures essential development tools for JetBrains-based development workflows. The environment is optimized for Java and JavaScript/TypeScript development.

## Prerequisites

Before using this configuration, ensure you have:

1. **Microsoft Dev Box Service Access**: You need access to Microsoft Dev Box through your organization
2. **Azure Subscription**: Required for Dev Box provisioning
3. **Appropriate Permissions**: Dev Box User or Dev Box Developer role in your organization

## Installation Instructions

### Step 1: Access Microsoft Dev Box

1. Navigate to the [Microsoft Dev Box portal](https://devbox.microsoft.com)
2. Sign in with your organizational account
3. Ensure you have access to a Dev Box pool that supports custom workloads

### Step 2: Deploy the Workload

1. **Clone or download this repository**:
   ```bash
   git clone https://github.com/blackchoey/jetbrains-devbox.git
   ```

2. **Upload the workload configuration**:
   - In the Dev Box portal, navigate to your Dev Box pool settings
   - Select "Custom Images" or "Workloads" (depending on your portal version)
   - Upload the `workload.yaml` file from this repository

3. **Create a new Dev Box**:
   - Select "Create Dev Box" in the portal
   - Choose the pool with your uploaded workload
   - Wait for the provisioning process to complete (typically 15-30 minutes)

### Step 3: Connect to Your Dev Box

1. Once provisioning is complete, click "Connect" in the Dev Box portal
2. Use Remote Desktop Connection or the web-based connection
3. Sign in with your credentials when prompted

## What Gets Installed

This workload automatically installs the following software:

### ☕ Java Development
- **Microsoft OpenJDK 21**: Latest LTS version of OpenJDK for Java development

### 🚀 JavaScript/TypeScript Development  
- **Node.js LTS 20.19.2**: Long Term Support version for JavaScript runtime

### 🛠️ IDE and Tools
- **IntelliJ IDEA Community Edition**: Free, open-source IDE from JetBrains

## Post-Installation Setup

After connecting to your Dev Box, you may want to:

1. **Configure IntelliJ IDEA**:
   - Launch IntelliJ IDEA from the Start menu
   - Install additional plugins as needed
   - Configure your preferred themes and settings

2. **Verify Java Installation**:
   ```cmd
   java -version
   javac -version
   ```

3. **Verify Node.js Installation**:
   ```cmd
   node --version
   npm --version
   ```

4. **Set up Git** (if needed):
   ```cmd
   git config --global user.name "Your Name"
   git config --global user.email "your.email@domain.com"
   ```

## Usage

Once your Dev Box is ready, you can:

- **Clone repositories** directly in IntelliJ IDEA or via command line
- **Develop Java applications** using the installed OpenJDK 21
- **Build Node.js/JavaScript projects** using the LTS Node.js runtime
- **Use IntelliJ IDEA's integrated terminal** for command-line operations
- **Install additional development tools** as needed via package managers

## Customization

To modify this workload for your specific needs:

1. Edit the `workload.yaml` file
2. Add or remove packages using the `winget` task format
3. Upload the updated configuration to your Dev Box pool

### Example: Adding Visual Studio Code
```yaml
- name: winget
  description: Install Visual Studio Code
  parameters:
    package: Microsoft.VisualStudioCode
```

## Troubleshooting

### Common Issues

**Dev Box fails to provision**:
- Check that your organization has Dev Box service enabled
- Verify you have the correct permissions
- Ensure the workload.yaml syntax is correct

**Software not installed**:
- Check the Dev Box provisioning logs
- Verify package names in the workload.yaml file
- Try reprovisioning the Dev Box

**Connection issues**:
- Ensure your network allows RDP connections
- Try the web-based connection option
- Check with your IT administrator about firewall settings

## Additional Resources

- [Microsoft Dev Box Documentation](https://docs.microsoft.com/azure/dev-box/)
- [IntelliJ IDEA Documentation](https://www.jetbrains.com/help/idea/)
- [OpenJDK Documentation](https://openjdk.org/guide/)
- [Node.js Documentation](https://nodejs.org/docs/)

## Contributing

If you'd like to improve this workload configuration:

1. Fork this repository
2. Make your changes to the `workload.yaml` file
3. Test the configuration in your Dev Box environment
4. Submit a pull request with a description of your changes

## License

This project is open source and available under the [MIT License](LICENSE).