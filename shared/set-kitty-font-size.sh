choose_font_size() {
  if [ -n "$1" ]; then
    choice="$1"
  else
    # Read the current font size and ask user to pick one
    current_font_size=$(grep -Po '(?<=^font_size )\d+' $HOME/.config/kitty/kitty.conf)
    choice=$(gum choose {7..16} "> Skip" --selected $current_font_size --height 14 --header "Choose your terminal font size")
  fi

  # Update kitty config
  if [[ $choice =~ ^[0-9]+$ ]]; then
    sed -i "s/^font_size .*$/font_size $choice/g" $HOME/.config/kitty/kitty.conf
  fi
}

choose_font_size "$1"
