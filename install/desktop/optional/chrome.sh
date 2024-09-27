sudo dnf install -y fedora-workstation-repositories >/dev/null
sudo dnf config-manager --set-enabled google-chrome >/dev/null

source $OMARA_PATH/shared/gum-spinner.sh "sudo dnf install -y google-chrome-stable" "Installing Chrome..."
