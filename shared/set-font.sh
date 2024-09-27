set_font() {
  local font_name=$1
  local dir_name=$2
  local url=$3
  local file_type=$4

  if ! $(fc-list | grep -i "$font_name" >/dev/null); then
    FONT_PATH="$HOME/.local/share/fonts/$dir_name"

    mkdir -p $FONT_PATH

    # Download and unzip the font
    TMP_ZIP_PATH="/tmp/$dir_name.zip"
    TMP_EXTRACT_PATH="/tmp/$dir_name"

    source $OMARA_PATH/shared/gum-spinner.sh "wget -qO $TMP_ZIP_PATH $url" "Downloading font..."
    source $OMARA_PATH/shared/gum-spinner.sh "unzip -qq $TMP_ZIP_PATH -d $TMP_EXTRACT_PATH" "Unzipping font..."

    # Copy fonts files to output dir and yeet tmp files
    cp "$TMP_EXTRACT_PATH"/*.$file_type "$FONT_PATH"
    rm -rf $TMP_ZIP_PATH $TMP_EXTRACT_PATH

    source $OMARA_PATH/shared/gum-spinner.sh "fc-cache && sleep 2" "Updating font cache..."

  fi

  gsettings set org.gnome.desktop.interface monospace-font-name "$font_name 10"
  source $OMARA_PATH/shared/set-kitty-font.sh "$font_name"
}

choose_font() {
  if [ -n "$1" ]; then
    choice="$1"
  else
    choice=$(gum choose "Caskaydia" "Fira" "JetBrains" "> Skip" --height 8 --header "Choose your monospace font")
  fi

  case $choice in
  "Caskaydia")
    set_font "CaskaydiaMono Nerd Font Mono" "CaskaydiaMono" "https://github.com/ryanoasis/nerd-fonts/releases/latest/download/CascadiaMono.zip" "ttf"
    ;;
  "Fira")
    set_font "FiraMono Nerd Font Mono" "FiraMono" "https://github.com/ryanoasis/nerd-fonts/releases/latest/download/FiraMono.zip" "otf"
    ;;
  "JetBrains")
    set_font "JetBrainsMono Nerd Font Mono" "JetBrainsMono" "https://github.com/ryanoasis/nerd-fonts/releases/latest/download/JetBrainsMono.zip" "ttf"
    ;;
  "> Skip") ;;
  esac
}

choose_font "$1"
