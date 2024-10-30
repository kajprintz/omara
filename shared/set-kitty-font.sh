KITTY_CONF_PATH="$HOME/.config/kitty/kitty.conf"

# Check if a font family is passed as an argument
if [ -z "$1" ]; then
  gum log --level "error" "No kitty font picked..."
  exit
fi

font_family="$1"

sed -i -e "s/font_family .*/font_family      $font_family/g" $KITTY_CONF_PATH
