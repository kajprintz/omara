# Install Mise version control manager

cmd="sudo dnf install -y dnf-plugins-core && sudo dnf config-manager --add-repo https://mise.jdx.dev/rpm/mise.repo && sudo dnf install -y mise"

$OMARA_PATH/shared/gum-spinner.sh "$cmd" "Installing Mise..."
