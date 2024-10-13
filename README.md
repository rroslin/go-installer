# Go Installer

This repository provides simple scripts to install and uninstall Go (Golang) on your linux system.

## Contents

- `install.sh`: A script to download and install Go.
- `uninstall.sh`: A script to remove Go from your system.

## Installation

To install Go using the `install.sh` script, follow these steps:

1. Clone the repository:
    ```bash
    git clone <repository-url>
    cd <repository-directory>
    ```
2. [OPTIONAL] set `GO_TAR_URL` if you want to install a specific version. If NOT set it will install the latest version.
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
### Common Issues During Installation

- Go is Already Installed - If Go is already installed on your system, running the install.sh script will stop and output:
    ```bash
    Go is already installed.
    go version <your current version>
    ```

    Solution: If you want to reinstall Go, manually uninstall the current version using uninstall.sh or remove it and run the script again.

- wget is Missing - If the wget utility is not installed, the script will stop and show:


    ```bash
    wget could not be found. Please install wget to use this script.
    ```
    Solution: Install wget using your package manager (e.g., sudo apt install wget for Ubuntu/Debian or sudo yum install wget for CentOS/RedHat).

- tar is Missing - If tar is not installed, the script will stop and show:

    ```bash
    tar could not be found. Please install tar to use this script.
    ```
    Solution: Install tar using your package manager (e.g., sudo apt install tar for Ubuntu/Debian or sudo yum install tar for CentOS/RedHat).

- Failed to Fetch Go Version - If the script fails to fetch the latest Go version, it might be due to a network issue or a problem with the Go website:

    ```bash
    GO_TAR_URL is not set. Fetching the latest version: <URL>
    ```
    Solution: Check your network connection. If the issue persists, you can manually set the GO_TAR_URL environment variable to a valid Go download URL.

- Go Installation Fails - If the script fails to install Go, it will display:

    ```bash
    Go installation failed.
    ```

    Solution: Check for any errors in the script output. Ensure you have sufficient permissions (you may need to use sudo), and verify that the downloaded tarball is intact. You can also try manually inspecting the /usr/local directory for installation issues.

### Common Issues During Uninstallation

- Go is Not Properly Removed - If the uninstall.sh script fails to completely remove Go, it will display:

    ```bash
    Go uninstallation failed.
    ```

    Solution: Ensure that you have sufficient permissions to remove Go from /usr/local/go. You may need to use sudo when running the uninstall.sh script. You can also manually verify that /usr/local/go and $HOME/go directories have been deleted.

- Environment Variables Not Removed - If the Go environment variables persist after uninstallation, they may not have been properly removed from your .bashrc file. Solution: Manually inspect your .bashrc file for Go-related entries and remove them, then run source ~/.bashrc to apply the changes.
