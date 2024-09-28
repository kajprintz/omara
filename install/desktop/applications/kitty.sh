cat <<EOF >~/.local/share/applications/kitty.desktop
[Desktop Entry]
Version=1.0
Type=Application
Name=kitty
GenericName=Terminal emulator
Comment=Fast, feature-rich, GPU based terminal
TryExec=kitty
StartupNotify=true
Exec=kitty -o allow_remote_control=yes  --override initial_window_width=120c --override initial_window_height=34c --override remember_window_size=no
Icon=$OMARA_PATH/install/desktop/applications/icons/kitty.png
Categories=System;TerminalEmulator;
EOF
