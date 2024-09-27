THEME_NAMES=("Tokyo Night" "Catppuccin" "Nord" "Everforest" "Gruvbox" "Kanagawa" "Rose Pine")
THEME=$(gum choose "${THEME_NAMES[@]}" "<< Back" --header "Choose your theme" --height 10 | tr '[:upper:]' '[:lower:]' | sed 's/ /-/g')

if [ -n "$THEME" ] && [ "$THEME" != "<<-back" ]; then
  source $OMARA_PATH/themes/$THEME/kitty.sh
  cp $OMARA_PATH/themes/$THEME/neovim.lua $HOME/.config/nvim/lua/plugins/theme.lua

  source $OMARA_PATH/themes/$THEME/gnome.sh
fi
