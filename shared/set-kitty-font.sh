KITTY_CONF_PATH="$HOME/.config/kitty/kitty.conf"

# Check if a font family is passed as an argument
if [ -z "$1" ]; then
  gum log --level "error" "No kitty font picked..."
  exit
fi

font_family="$1"

# Remove old font configuration lines globally
sed -i '/^# BEGIN_KITTY_FONTS/d' $KITTY_CONF_PATH
sed -i '/^font_family/d' $KITTY_CONF_PATH
sed -i '/^bold_font/d' $KITTY_CONF_PATH
sed -i '/^italic_font/d' $KITTY_CONF_PATH
sed -i '/^bold_italic_font/d' $KITTY_CONF_PATH
sed -i '/^# END_KITTY_FONTS/d' $KITTY_CONF_PATH

# Append the new font configuration at the end of the file
echo -e "\n# BEGIN_KITTY_FONTS\nfont_family      family=\"$font_family\"\nbold_font        auto\nitalic_font      auto\nbold_italic_font auto\n# END_KITTY_FONTS\n" >>$KITTY_CONF_PATH
