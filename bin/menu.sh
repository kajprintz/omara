# If no arguments are passed, prompt the user for input using gum
if [ $# -eq 1 ]; then
  SUB=$1
  source "$OMARA_PATH/bin/$SUB.sh"
else
  while true; do
    SUB=$(gum choose "Install" "Theme" "Font" "Uninstall" "Quit" --height 10 --header "" | tr '[:upper:]' '[:lower:]')

    # Exit the loop if the user chooses 'quit' or it is empty
    if [ "$SUB" == "quit" ] || [ -z "$SUB" ]; then
      gum spin --spinner moon --title "Quitting...!" -- sleep 1
      break
    fi

    # Run the sub command
    source "$OMARA_PATH/bin/$SUB.sh"
  done
fi
