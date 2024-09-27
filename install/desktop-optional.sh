OPTIONAL_APPS=("Spotify" "Chrome" "Firefox")
apps=$(gum choose "${OPTIONAL_APPS[@]}" --no-limit --height 5 --header "Select optional apps" | tr ' ' '-')

if [[ -n "$apps" ]]; then
  for app in $apps; do
    installer="$OMARA_PATH/install/desktop/optional/${app,,}.sh"
    source $installer
  done
fi
