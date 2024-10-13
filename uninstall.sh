# delete go environment variables from .bashrc
sed -i '/# Load Go environment variables/,+3d' $HOME/.bashrc

# remove last empty lines from .bashrc
sed -i '${/^$/d}' $HOME/.bashrc

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