# Specify bash source file to add Go environment variables
BASH_SOURCE=$HOME/.bashrc

# delete go environment variables from .bashrc
sed -i '/# Load Go environment variables/,+3d' $BASH_SOURCE

# remove last empty lines from .bashrc
sed -i '${/^$/d}' $BASH_SOURCE

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