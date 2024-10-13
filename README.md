# Go Installer

This repository provides simple scripts to install and uninstall Go (Golang) on your linux system.

## Contents

- `install.sh`: A script to download and install Go.
- `uninstall.sh`: A script to remove Go from your system.

## Installation

To install Go follow these steps:

1. Clone the repository:
    ```bash
    git clone <repository-url>
    cd <repository-directory>
    ```
2. **[OPTIONAL]** Set `GO_TAR_URL` if you want to install a specific version. If **NOT** set it will install the latest version.
    ```bash
    export GO_TAR_URL=<SPECIFIC_GO_RELEASE_TAR>
    ```
3. Run the install.sh script to install:
    ```bash
    ./install.sh
    ```
## Uninstallation
To remove Go, you can run the uninstall.sh script:
1. Run the uninstall.sh script:
    ```bash
    ./uninstall.sh
    ```
## Troubleshooting
- Permission Issues - You may need to run the script with sudo if you encounter permission errors while installing Go.

- Path Issues Make sure to modify the script to use your preferred start-up file. 
    Examples: `~/.bashrc`, `~/.bash_profile`, or `~/.zshrc`
    ```bash
    # Specify bash source file to add Go environment variables
    BASH_SOURCE=<YOUR_STARTUP_FILE>
    ```