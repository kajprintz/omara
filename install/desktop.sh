# Run desktop installers
for installer in $OMARA_PATH/install/desktop/*.sh; do
  app=$(basename $installer .sh)

  source $installer
done

# Run optional installers
source $OMARA_PATH/install/desktop-optional.sh

# Install .desktop Applications
for script in $OMARA_PATH/install/desktop/applications/*.sh; do source $script; done
