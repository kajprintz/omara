KITTY_CONF_PATH="$HOME/.config/kitty/kitty.conf"

choose_font_size() {
  if [ -n "$1" ]; then
    choice="$1"
  else
    # Read the current font size and ask user to pick one
    current_font_size=$(grep -Po '(?<=^font_size)\s*\d+' $HOME/.config/kitty/kitty.conf)
    choice=$(gum choose {7..16} "> Skip" --selected $current_font_size --height 14 --header "Choose your terminal font size")
  fi

  # Update kitty config
  if [[ $choice =~ ^[0-9]+$ ]]; then
    sed -i -e "s/font_size .*/font_size  ${choice:-10}/g" $KITTY_CONF_PATH
  fi
}

choose_font_size "$1"
