# Exit immediately if a command exits with a non-zero status
set -e

install() {
  # Ensure we have the latest code
  cd $OMARA_PATH && git pull >/dev/null && cd - >/dev/null

  # Desktop software and tweaks will only be installed if we're running Gnome
  RUNNING_GNOME=$([[ "$XDG_CURRENT_DESKTOP" == *"GNOME"* ]] && echo true || echo false)

  # Check the distribution name and version and abort if incompatible
  source $OMARA_PATH/bin/scripts/check-distro-version.sh

  # Install Gum - handles user input
  source $OMARA_PATH/bin/scripts/install-gum.sh >/dev/null

  # Install Mise - handles versioning of dev tools
  source $OMARA_PATH/bin/scripts/install-mise.sh

  if $RUNNING_GNOME; then
    # Ensure computer doesn't go to sleep or lock while installing
    gsettings set org.gnome.desktop.screensaver lock-enabled false
    gsettings set org.gnome.desktop.session idle-delay 0
  fi

  # Install terminal tools
  source $OMARA_PATH/install/terminal.sh

  if $RUNNING_GNOME; then
    # Install desktop tools and tweaks
    source $OMARA_PATH/install/desktop.sh

    # Revert to normal idle and lock settings
    gsettings set org.gnome.desktop.screensaver lock-enabled true
    gsettings set org.gnome.desktop.session idle-delay 300
  fi
}

install && gum spin --spinner globe --title "Installation complete!" -- sleep 3

# Logout to pickup changes
gum confirm "Ready to reboot for all settings to take effect?" && sudo reboot
