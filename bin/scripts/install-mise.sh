# Install Mise version control manager
sudo dnf install dnf5-plugins
cmd="sudo dnf install -y dnf-plugins-core && sudo dnf config-manager addrepo --from-repofile=https://mise.jdx.dev/rpm/mise.repo && sudo dnf install -y mise --repo mise"

$OMARA_PATH/shared/gum-spinner.sh "$cmd" "Installing Mise..."
