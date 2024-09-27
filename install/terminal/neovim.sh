source $OMARA_PATH/shared/gum-spinner.sh "sudo dnf install -y neovim" "Installing neovim..."

# Only attempt to set configuration if Neovim has never been run
if [ ! -d "$HOME/.config/nvim" ]; then

  # Use LazyVim
  git clone https://github.com/LazyVim/starter $HOME/.config/nvim

  # Default to Tokyo Night theme
  cp $OMARA_PATH/themes/tokyo-night/neovim.lua $HOME/.config/nvim/lua/plugins/theme.lua
fi
