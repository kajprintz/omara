# Gum is used for the Omara commands for tailoring Omara after the initial install
#
GUM_VERSION="0.14.3" # Use known good version

# Download the .rpm package for the specified version
wget -qO /tmp/gum.rpm "https://github.com/charmbracelet/gum/releases/download/v${GUM_VERSION}/gum-${GUM_VERSION}-1.x86_64.rpm"

# Install the .rpm package using dnf
sudo dnf install -y /tmp/gum.rpm >/dev/null

# Remove the downloaded .rpm file
rm /tmp/gum.rpm
