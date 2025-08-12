# JetBrains DevBox

A streamlined development environment setup for JetBrains-based development workflows.

## Overview

This repository contains a workload configuration that automatically sets up a complete development environment with essential tools for Java and Node.js development using JetBrains IDEs.

## What's Included

The development environment includes:

- **Microsoft OpenJDK 21** - Modern Java development kit
- **Node.js LTS (v20.19.2)** - JavaScript runtime for modern web development
- **IntelliJ IDEA Community Edition** - Powerful IDE for Java and multi-language development

## Prerequisites

This workload configuration is designed for Windows environments and requires:

- Windows 10/11
- Winget package manager (included with Windows App Installer)
- Administrative privileges for software installation

## Usage

1. Clone this repository:
   ```bash
   git clone https://github.com/blackchoey/jetbrains-devbox.git
   cd jetbrains-devbox
   ```

2. Execute the workload configuration using your preferred workload management tool that supports the 1.0 schema.

3. The setup will automatically install all specified development tools.

## Configuration

The environment is defined in `workload.yaml` using schema version 1.0. You can customize the configuration by modifying:

- Package versions
- Additional development tools
- Installation parameters

## Post-Installation

After successful installation, you'll have a complete development environment ready for:

- Java development with OpenJDK 21
- Node.js/JavaScript development
- Multi-language development in IntelliJ IDEA

## Contributing

Feel free to submit issues and enhancement requests to improve this development environment setup.

## License

This project is open source. Please check the repository for license details.