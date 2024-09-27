cat <<EOF >~/.local/share/applications/kitty.desktop
[Desktop Entry]
Version=1.0
Type=Application
Name=kitty
GenericName=Terminal emulator
Comment=Fast, feature-rich, GPU based terminal
TryExec=kitty
StartupNotify=true
Exec=kitty -o allow_remote_control=yes
Exec=kitty -o allow_remote_control=yes --start-as maximized
Icon=$OMARA_PATH/install/desktop/applications/icons/kitty.png
Categories=System;TerminalEmulator;
EOF
