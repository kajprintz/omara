# Configure git config
[ -f "$HOME/.gitconfig" ] && mv $HOME/.gitconfig $HOME/.gitconfig.bak
cp $OMARA_PATH/configs/git/gitconfig.conf $HOME/.gitconfig
