AVAILABLE_LANGUAGES=("Ruby on Rails" "Go" "Python")
SELECTED_LANGUAGES="Ruby on Rails"
languages=$(gum choose "${AVAILABLE_LANGUAGES[@]}" --no-limit --selected "$SELECTED_LANGUAGES" --height 5 --header "Select programming languages")

if [[ -n "$languages" ]]; then
  for language in $languages; do
    case $language in
    Ruby)
      source $OMARA_PATH/shared/gum-spinner.sh "mise use --global ruby@3.3" "Installing ruby@3.3..."
      source $OMARA_PATH/shared/gum-spinner.sh "mise x ruby -- gem install rails --no-document" "Installing Ruby on Rails..."
      ;;
    Go)
      source $OMARA_PATH/shared/gum-spinner.sh "mise use --global go@latest" "Installing go@latest..."
      ;;
    Python)
      source $OMARA_PATH/shared/gum-spinner.sh "mise use --global python@latest" "Installing python@latest..."
      ;;
    esac
  done
fi
