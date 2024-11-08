# Install Mise version control manager

cmd="sudo dnf install -y dnf-plugins-core && sudo dnf config-manager addrepo --add-or-replace --id=mise --set=name='Mise' --set=baseurl='ttps://mise.jdx.dev/rpm/mise.repo' && sudo dnf install -y mise"

$OMARA_PATH/shared/gum-spinner.sh "$cmd" "Installing Mise..."
