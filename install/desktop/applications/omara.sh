cat <<EOF >$HOME/.local/share/applications/omara.desktop
[Desktop Entry]
Name=Omara
Exec=kitty -o allow_remote_control=yes --override initial_window_width=55c --override initial_window_height=26c --override remember_window_size=no omara
Comment=Omara Configuration Tool
Terminal=false
Icon=$OMARA_PATH/install/desktop/applications/icons/omara.png
Type=Application
EOF
