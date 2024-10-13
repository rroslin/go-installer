# Specify bash source file to add Go environment variables
STARTUP_FILE=$HOME/.bashrc

# delete go environment variables from .bashrc
sed -i '/# Load Go environment variables/,+3d' $STARTUP_FILE

# remove last empty lines from .bashrc
sed -i '${/^$/d}' $STARTUP_FILE

# remove go installation
sudo rm -rf /usr/local/go

# remove go workspace
rm -rf $HOME/go

# remove go environment variables
unset GOPATH
unset GOBIN

# Print success if Go is uninstalled
if ! command -v go &> /dev/null
then
    echo "Go has been uninstalled successfully."
else
    echo "Go uninstallation failed."
fi