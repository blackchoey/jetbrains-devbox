# JetBrains Development Environment

A [JetBrains DevBox](https://www.jetbrains.com/remote-development/devbox/) configuration for setting up a complete Java and Node.js development environment with IntelliJ IDEA Community Edition.

## What Gets Installed

This DevBox configuration automatically installs:

- **Microsoft OpenJDK 21** - Java Development Kit
- **Node.js LTS (v20.19.2)** - JavaScript runtime environment 
- **IntelliJ IDEA Community Edition** - Integrated Development Environment

## Prerequisites

Before using this DevBox configuration, ensure you have:

1. **Windows 10/11** - This configuration uses Windows Package Manager (winget)
2. **JetBrains DevBox** - [Download and install DevBox](https://www.jetbrains.com/remote-development/devbox/)
3. **Windows Package Manager (winget)** - Usually pre-installed on Windows 10/11, or [install from Microsoft Store](https://www.microsoft.com/p/app-installer/9nblggh4nns1)

## Installation Instructions

### Step 1: Clone this Repository

```bash
git clone https://github.com/blackchoey/jetbrains-devbox.git
cd jetbrains-devbox
```

### Step 2: Create DevBox Environment

1. Open JetBrains DevBox
2. Click **"Create DevBox"** or **"New Environment"**
3. Select **"From Configuration File"**
4. Navigate to the cloned repository folder
5. Select the `workload.yaml` file
6. Click **"Create"**

### Step 3: Wait for Installation

DevBox will automatically:
1. Create a new development environment
2. Install Microsoft OpenJDK 21
3. Install Node.js LTS (v20.19.2)
4. Install IntelliJ IDEA Community Edition
5. Configure the environment

This process typically takes 5-15 minutes depending on your internet connection.

## Usage

### Starting Your Development Environment

1. Open JetBrains DevBox
2. Select your created environment
3. Click **"Start"**
4. Once ready, click **"Open in Browser"** or **"Connect"**

### Accessing Installed Tools

- **IntelliJ IDEA**: Available through the DevBox interface or Start menu
- **Java**: Accessible via command line (`java -version`)
- **Node.js**: Accessible via command line (`node --version`, `npm --version`)

### Creating Projects

1. Open IntelliJ IDEA in your DevBox environment
2. Create new projects using the installed Java JDK 21
3. Node.js projects can be created and managed through the integrated terminal

## Verification

To verify your installation, open a terminal in your DevBox environment and run:

```bash
# Check Java installation
java -version

# Check Node.js installation
node --version
npm --version

# Check winget (if needed for troubleshooting)
winget --version
```

Expected output:
- Java: OpenJDK version 21.x.x
- Node.js: v20.19.2
- npm: Compatible version with Node.js 20.19.2

## Troubleshooting

### Common Issues

**Environment fails to create:**
- Ensure you have a stable internet connection
- Verify winget is installed and updated
- Check Windows updates are current

**Package installation fails:**
- Try creating the environment again
- Check if Windows Defender or antivirus is blocking installations
- Ensure you have administrator privileges

**DevBox won't start:**
- Restart JetBrains DevBox application
- Check system resources (RAM, disk space)
- Review DevBox logs for specific error messages

### Getting Help

- [JetBrains DevBox Documentation](https://www.jetbrains.com/help/devbox/)
- [JetBrains Support](https://www.jetbrains.com/support/)
- Check the Issues tab in this repository

## Contributing

To modify this development environment:

1. Edit the `workload.yaml` file
2. Update package versions or add new tools as needed
3. Test your changes by creating a new DevBox environment
4. Submit a pull request with your improvements

## License

This configuration is provided as-is for development purposes.