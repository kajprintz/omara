[ -f "$HOME/.profile" ] && mv $HOME/.profile $HOME/.profile.bak
cp $OMARA_PATH/configs/bash/profile $HOME/.profile

# Configure the bash shell using Omara defaults
[ -f "$HOME/.bashrc" ] && mv $HOME/.bashrc $HOME/.bashrc.bak
cp $OMARA_PATH/configs/bash/bashrc $HOME/.bashrc
