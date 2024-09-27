sudo dnf config-manager --add-repo https://cli.github.com/packages/rpm/gh-cli.repo >/dev/null
source $OMARA_PATH/shared/gum-spinner.sh "sudo dnf install -y gh" "Installing github-cli..."
