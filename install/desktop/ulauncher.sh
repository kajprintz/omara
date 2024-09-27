source $OMARA_PATH/shared/gum-spinner.sh "sudo dnf install -y ulauncher" "Installing ulauncher..."

# Create autostart directory if it doesn't exist
mkdir -p $HOME/.config/autostart/

# Copy the custom ulauncher.desktop file
cp $OMARA_PATH/configs/ulauncher/ulauncher.desktop $HOME/.config/autostart/ulauncher.desktop

# Start Ulauncher in the background without GUI to generate its configuration
ulauncher --hide-window >/dev/null 2>&1 &

# Sleep for a few seconds to allow Ulauncher to create its config
sleep 2

# Kill the Ulauncher process after configuration is populated
pkill ulauncher

# Overwrite default settings with your custom settings
cp $OMARA_PATH/configs/ulauncher/ulauncher.json $HOME/.config/ulauncher/settings.json
