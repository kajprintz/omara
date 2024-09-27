# install and setup Kitty terminal

KITTY_CONF_PATH=$HOME/.config/kitty/kitty.conf

source $OMARA_PATH/shared/gum-spinner.sh "sudo dnf install -y kitty" "Installing kitty..."

[ -f $KITTY_CONF_PATH ] && mv $KITTY_CONF_PATH "$KITTY_CONF_PATH.bak"
cp $OMARA_PATH/configs/kitty/kitty.conf $KITTY_CONF_PATH

# Set default theme
kitten theme Tokyo Night Storm

# Set default font and size
source $OMARA_PATH/shared/set-kitty-font.sh "CaskaydiaMono Nerd Font Mono"
source $OMARA_PATH/shared/set-kitty-font-size.sh 12

# symbolically links gnome console to kitty
sudo ln -s -f /usr/bin/kitty /usr/bin/kgx

# reload kitty config
kitty @ load-config
