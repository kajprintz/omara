uninstall() {
  APPS=("Spotify" "Chrome" "Firefox" "Github-cli")
  apps=$(gum choose "${APPS[@]}" --no-limit --height 6 --header "Pick apps to uninstall..." | tr ' ' '-')

  if [[ -n "$apps" ]]; then
    for app in $apps; do
      uninstaller="$OMARA_PATH/uninstall/${app,,}.sh"
      [ -n "$uninstaller" ] && source $uninstaller
    done
  fi
}

uninstall && gum spin --spinner globe --title "Uninstall completed!" -- sleep 3
