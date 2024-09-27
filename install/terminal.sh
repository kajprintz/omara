source $OMARA_PATH/shared/gum-spinner.sh "sudo dnf update -y && sudo dnf upgrade -y" "Updating fedora packages..."

# Run terminal installers from a directory
for installer in $OMARA_PATH/install/terminal/*.sh; do
  source $installer
done

# Install dev languages and storage
source $OMARA_PATH/install/languages.sh
source $OMARA_PATH/install/storage.sh
