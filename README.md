# JetBrains DevBox - Java Development Environment

This repository contains a JetBrains DevBox configuration that sets up a complete Java development environment with modern tooling.

## What's Included

This DevBox configuration automatically installs and configures:

- **Microsoft OpenJDK 21** - Latest LTS Java runtime
- **Node.js LTS (v20.19.2)** - JavaScript runtime for modern web development
- **IntelliJ IDEA Community Edition** - Full-featured Java IDE

## Prerequisites

Before using this DevBox configuration, you need:

1. **Windows 10/11** - This configuration uses Windows Package Manager (winget)
2. **JetBrains DevBox** - Download and install from [JetBrains DevBox website](https://www.jetbrains.com/devbox/)
3. **Windows Package Manager (winget)** - Usually pre-installed on Windows 10/11, or install from Microsoft Store

## Installation Instructions

### Step 1: Install JetBrains DevBox

1. Go to the [JetBrains DevBox website](https://www.jetbrains.com/devbox/)
2. Download the installer for your operating system
3. Run the installer and follow the setup wizard
4. Sign in with your JetBrains account (free account is sufficient)

### Step 2: Clone This Repository

```bash
git clone https://github.com/blackchoey/jetbrains-devbox.git
cd jetbrains-devbox
```

### Step 3: Create and Start Your DevBox

1. Open JetBrains DevBox application
2. Click **"Create DevBox"** or **"New DevBox"**
3. Choose **"From Configuration File"**
4. Navigate to and select the `workload.yaml` file from this repository
5. Give your DevBox a name (e.g., "Java Development Environment")
6. Click **"Create"** to start the provisioning process

### Step 4: Wait for Installation

The DevBox will automatically:
- Download and install Microsoft OpenJDK 21
- Download and install Node.js LTS (version 20.19.2)
- Download and install IntelliJ IDEA Community Edition
- Configure the development environment

This process typically takes 10-15 minutes depending on your internet connection.

## Usage

Once your DevBox is ready:

1. **Access your environment**: Click **"Connect"** in the DevBox interface
2. **Start coding**: IntelliJ IDEA will be available in the applications menu
3. **Verify installations**: Open a terminal and run:
   ```bash
   java -version    # Should show OpenJDK 21
   node -v          # Should show Node.js v20.19.2
   npm -v           # Should show npm version
   ```

## Troubleshooting

### Common Issues

**DevBox creation fails:**
- Ensure you have a stable internet connection
- Check that Windows Package Manager (winget) is installed and working
- Verify you have sufficient disk space (at least 5GB free)

**Package installation fails:**
- Some packages may require Windows administrator privileges
- Check Windows Update is current
- Restart the DevBox creation process if it gets stuck

**IntelliJ IDEA doesn't start:**
- Verify Java installation: `java -version`
- Check if IntelliJ IDEA was installed correctly in the applications menu
- Try restarting the DevBox

### Getting Help

- [JetBrains DevBox Documentation](https://www.jetbrains.com/help/devbox/)
- [DevBox Community Forum](https://discuss.kotlinlang.org/c/devbox)
- [Report Issues](https://github.com/blackchoey/jetbrains-devbox/issues)

## Configuration Details

This DevBox uses the following package sources:
- **winget** (Windows Package Manager) for all software installations
- Packages are installed with default configurations
- Environment variables are automatically configured

## Contributing

To modify this DevBox configuration:

1. Edit the `workload.yaml` file
2. Test your changes by creating a new DevBox
3. Submit a pull request with your improvements

## License

This DevBox configuration is provided as-is for educational and development purposes.