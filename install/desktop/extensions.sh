# Install GNOME extensions
# Use the gnome-settings-commands.sh script in extra folder to generate
# the appropriate gsettings set commands for each extension

source $OMARA_PATH/shared/gum-spinner.sh "pip3 install --upgrade gnome-extensions-cli" "Installing extensions tool..."

gum confirm "$(echo "To install Gnome extensions, you need to accept some confirmations. Are you ready?" | fold -sw50)"

source $OMARA_PATH/shared/gum-spinner.sh "gnome-extensions-cli install just-perfection-desktop@just-perfection" "Installing just-perfection..."
source $OMARA_PATH/shared/gum-spinner.sh "gnome-extensions-cli install dash-to-panel@jderose9.github.com" "Installing dash-to-panel..."
source $OMARA_PATH/shared/gum-spinner.sh "gnome-extensions-cli install tactile@lundal.io" "Installing tactile..."

# Compile gsettings schemas in order to be able to set them
glib-compile-schemas $HOME/.local/share/gnome-shell/extensions/just-perfection-desktop\@just-perfection/schemas/
glib-compile-schemas $HOME/.local/share/gnome-shell/extensions/tactile@lundal.io/schemas/

# Configure Just Perfection
gsettings set org.gnome.shell.extensions.just-perfection accessibility-menu "true"
gsettings set org.gnome.shell.extensions.just-perfection activities-button "true"
gsettings set org.gnome.shell.extensions.just-perfection alt-tab-icon-size "0"
gsettings set org.gnome.shell.extensions.just-perfection alt-tab-small-icon-size "0"
gsettings set org.gnome.shell.extensions.just-perfection alt-tab-window-preview-size "0"
gsettings set org.gnome.shell.extensions.just-perfection animation "2"
gsettings set org.gnome.shell.extensions.just-perfection background-menu "true"
gsettings set org.gnome.shell.extensions.just-perfection calendar "true"
gsettings set org.gnome.shell.extensions.just-perfection clock-menu "true"
gsettings set org.gnome.shell.extensions.just-perfection clock-menu-position "0"
gsettings set org.gnome.shell.extensions.just-perfection clock-menu-position-offset "0"
gsettings set org.gnome.shell.extensions.just-perfection controls-manager-spacing-size "0"
gsettings set org.gnome.shell.extensions.just-perfection dash "true"
gsettings set org.gnome.shell.extensions.just-perfection dash-app-running "true"
gsettings set org.gnome.shell.extensions.just-perfection dash-icon-size "0"
gsettings set org.gnome.shell.extensions.just-perfection dash-separator "true"
gsettings set org.gnome.shell.extensions.just-perfection double-super-to-appgrid "true"
gsettings set org.gnome.shell.extensions.just-perfection events-button "true"
gsettings set org.gnome.shell.extensions.just-perfection keyboard-layout "true"
gsettings set org.gnome.shell.extensions.just-perfection looking-glass-height "0"
gsettings set org.gnome.shell.extensions.just-perfection looking-glass-width "0"
gsettings set org.gnome.shell.extensions.just-perfection max-displayed-search-results "1"
gsettings set org.gnome.shell.extensions.just-perfection notification-banner-position "1"
gsettings set org.gnome.shell.extensions.just-perfection osd "true"
gsettings set org.gnome.shell.extensions.just-perfection osd-position "0"
gsettings set org.gnome.shell.extensions.just-perfection overlay-key "true"
gsettings set org.gnome.shell.extensions.just-perfection panel "true"
gsettings set org.gnome.shell.extensions.just-perfection panel-button-padding-size "0"
gsettings set org.gnome.shell.extensions.just-perfection panel-corner-size "0"
gsettings set org.gnome.shell.extensions.just-perfection panel-icon-size "0"
gsettings set org.gnome.shell.extensions.just-perfection panel-in-overview "false"
gsettings set org.gnome.shell.extensions.just-perfection panel-indicator-padding-size "0"
gsettings set org.gnome.shell.extensions.just-perfection panel-notification-icon "true"
gsettings set org.gnome.shell.extensions.just-perfection panel-size "0"
gsettings set org.gnome.shell.extensions.just-perfection power-icon "true"
gsettings set org.gnome.shell.extensions.just-perfection quick-settings "true"
gsettings set org.gnome.shell.extensions.just-perfection quick-settings-dark-mode "true"
gsettings set org.gnome.shell.extensions.just-perfection ripple-box "true"
gsettings set org.gnome.shell.extensions.just-perfection screen-recording-indicator "true"
gsettings set org.gnome.shell.extensions.just-perfection screen-sharing-indicator "true"
gsettings set org.gnome.shell.extensions.just-perfection search "true"
gsettings set org.gnome.shell.extensions.just-perfection show-apps-button "true"
gsettings set org.gnome.shell.extensions.just-perfection startup-status "1"
gsettings set org.gnome.shell.extensions.just-perfection switcher-popup-delay "true"
gsettings set org.gnome.shell.extensions.just-perfection theme "false"
gsettings set org.gnome.shell.extensions.just-perfection top-panel-position "0"
gsettings set org.gnome.shell.extensions.just-perfection type-to-search "true"
gsettings set org.gnome.shell.extensions.just-perfection weather "true"
gsettings set org.gnome.shell.extensions.just-perfection window-demands-attention-focus "false"
gsettings set org.gnome.shell.extensions.just-perfection window-maximized-on-create "false"
gsettings set org.gnome.shell.extensions.just-perfection window-menu-take-screenshot-button "true"
gsettings set org.gnome.shell.extensions.just-perfection window-picker-icon "true"
gsettings set org.gnome.shell.extensions.just-perfection window-preview-caption "true"
gsettings set org.gnome.shell.extensions.just-perfection window-preview-close-button "true"
gsettings set org.gnome.shell.extensions.just-perfection workspace "true"
gsettings set org.gnome.shell.extensions.just-perfection workspace-background-corner-size "0"
gsettings set org.gnome.shell.extensions.just-perfection workspace-peek "true"
gsettings set org.gnome.shell.extensions.just-perfection workspace-popup "false"
gsettings set org.gnome.shell.extensions.just-perfection workspace-switcher-should-show "false"
gsettings set org.gnome.shell.extensions.just-perfection workspace-switcher-size "0"
gsettings set org.gnome.shell.extensions.just-perfection workspace-wrap-around "false"
gsettings set org.gnome.shell.extensions.just-perfection workspaces-in-app-grid "true"
gsettings set org.gnome.shell.extensions.just-perfection world-clock "true"

# Configure Dash To Panel
gsettings set org.gnome.shell.extensions.dash-to-panel activate-single-window true
gsettings set org.gnome.shell.extensions.dash-to-panel animate-app-switch true
gsettings set org.gnome.shell.extensions.dash-to-panel animate-appicon-hover false
gsettings set org.gnome.shell.extensions.dash-to-panel animate-appicon-hover-animation-convexity "{'RIPPLE': 2.0, 'PLANK': 1.0}"
gsettings set org.gnome.shell.extensions.dash-to-panel animate-appicon-hover-animation-duration "{'SIMPLE': uint32 160, 'RIPPLE': 130, 'PLANK': 100}"
gsettings set org.gnome.shell.extensions.dash-to-panel animate-appicon-hover-animation-extent "{'RIPPLE': 4, 'PLANK': 4, 'SIMPLE': 1}"
gsettings set org.gnome.shell.extensions.dash-to-panel animate-appicon-hover-animation-rotation "{'SIMPLE': 0, 'RIPPLE': 10, 'PLANK': 0}"
gsettings set org.gnome.shell.extensions.dash-to-panel animate-appicon-hover-animation-travel "{'SIMPLE': 0.29999999999999999, 'RIPPLE': 0.40000000000000002, 'PLANK': 0.0}"
gsettings set org.gnome.shell.extensions.dash-to-panel animate-appicon-hover-animation-type 'SIMPLE'
gsettings set org.gnome.shell.extensions.dash-to-panel animate-appicon-hover-animation-zoom "{'SIMPLE': 1.0, 'RIPPLE': 1.25, 'PLANK': 2.0}"
gsettings set org.gnome.shell.extensions.dash-to-panel animate-window-launch true
gsettings set org.gnome.shell.extensions.dash-to-panel app-ctrl-hotkey-1 "['<Ctrl><Super>1']"
gsettings set org.gnome.shell.extensions.dash-to-panel app-ctrl-hotkey-10 "['<Ctrl><Super>0']"
gsettings set org.gnome.shell.extensions.dash-to-panel app-ctrl-hotkey-2 "['<Ctrl><Super>2']"
gsettings set org.gnome.shell.extensions.dash-to-panel app-ctrl-hotkey-3 "['<Ctrl><Super>3']"
gsettings set org.gnome.shell.extensions.dash-to-panel app-ctrl-hotkey-4 "['<Ctrl><Super>4']"
gsettings set org.gnome.shell.extensions.dash-to-panel app-ctrl-hotkey-5 "['<Ctrl><Super>5']"
gsettings set org.gnome.shell.extensions.dash-to-panel app-ctrl-hotkey-6 "['<Ctrl><Super>6']"
gsettings set org.gnome.shell.extensions.dash-to-panel app-ctrl-hotkey-7 "['<Ctrl><Super>7']"
gsettings set org.gnome.shell.extensions.dash-to-panel app-ctrl-hotkey-8 "['<Ctrl><Super>8']"
gsettings set org.gnome.shell.extensions.dash-to-panel app-ctrl-hotkey-9 "['<Ctrl><Super>9']"
gsettings set org.gnome.shell.extensions.dash-to-panel app-ctrl-hotkey-kp-1 "['<Ctrl><Super>KP_1']"
gsettings set org.gnome.shell.extensions.dash-to-panel app-ctrl-hotkey-kp-10 "['<Ctrl><Super>KP_0']"
gsettings set org.gnome.shell.extensions.dash-to-panel app-ctrl-hotkey-kp-2 "['<Ctrl><Super>KP_2']"
gsettings set org.gnome.shell.extensions.dash-to-panel app-ctrl-hotkey-kp-3 "['<Ctrl><Super>KP_3']"
gsettings set org.gnome.shell.extensions.dash-to-panel app-ctrl-hotkey-kp-4 "['<Ctrl><Super>KP_4']"
gsettings set org.gnome.shell.extensions.dash-to-panel app-ctrl-hotkey-kp-5 "['<Ctrl><Super>KP_5']"
gsettings set org.gnome.shell.extensions.dash-to-panel app-ctrl-hotkey-kp-6 "['<Ctrl><Super>KP_6']"
gsettings set org.gnome.shell.extensions.dash-to-panel app-ctrl-hotkey-kp-7 "['<Ctrl><Super>KP_7']"
gsettings set org.gnome.shell.extensions.dash-to-panel app-ctrl-hotkey-kp-8 "['<Ctrl><Super>KP_8']"
gsettings set org.gnome.shell.extensions.dash-to-panel app-ctrl-hotkey-kp-9 "['<Ctrl><Super>KP_9']"
gsettings set org.gnome.shell.extensions.dash-to-panel app-hotkey-1 "['<Super>1']"
gsettings set org.gnome.shell.extensions.dash-to-panel app-hotkey-10 "['<Super>0']"
gsettings set org.gnome.shell.extensions.dash-to-panel app-hotkey-2 "['<Super>2']"
gsettings set org.gnome.shell.extensions.dash-to-panel app-hotkey-3 "['<Super>3']"
gsettings set org.gnome.shell.extensions.dash-to-panel app-hotkey-4 "['<Super>4']"
gsettings set org.gnome.shell.extensions.dash-to-panel app-hotkey-5 "['<Super>5']"
gsettings set org.gnome.shell.extensions.dash-to-panel app-hotkey-6 "['<Super>6']"
gsettings set org.gnome.shell.extensions.dash-to-panel app-hotkey-7 "['<Super>7']"
gsettings set org.gnome.shell.extensions.dash-to-panel app-hotkey-8 "['<Super>8']"
gsettings set org.gnome.shell.extensions.dash-to-panel app-hotkey-9 "['<Super>9']"
gsettings set org.gnome.shell.extensions.dash-to-panel app-hotkey-kp-1 "['<Super>KP_1']"
gsettings set org.gnome.shell.extensions.dash-to-panel app-hotkey-kp-10 "['<Super>KP_0']"
gsettings set org.gnome.shell.extensions.dash-to-panel app-hotkey-kp-2 "['<Super>KP_2']"
gsettings set org.gnome.shell.extensions.dash-to-panel app-hotkey-kp-3 "['<Super>KP_3']"
gsettings set org.gnome.shell.extensions.dash-to-panel app-hotkey-kp-4 "['<Super>KP_4']"
gsettings set org.gnome.shell.extensions.dash-to-panel app-hotkey-kp-5 "['<Super>KP_5']"
gsettings set org.gnome.shell.extensions.dash-to-panel app-hotkey-kp-6 "['<Super>KP_6']"
gsettings set org.gnome.shell.extensions.dash-to-panel app-hotkey-kp-7 "['<Super>KP_7']"
gsettings set org.gnome.shell.extensions.dash-to-panel app-hotkey-kp-8 "['<Super>KP_8']"
gsettings set org.gnome.shell.extensions.dash-to-panel app-hotkey-kp-9 "['<Super>KP_9']"
gsettings set org.gnome.shell.extensions.dash-to-panel app-shift-hotkey-1 "['<Shift><Super>1']"
gsettings set org.gnome.shell.extensions.dash-to-panel app-shift-hotkey-10 "['<Shift><Super>0']"
gsettings set org.gnome.shell.extensions.dash-to-panel app-shift-hotkey-2 "['<Shift><Super>2']"
gsettings set org.gnome.shell.extensions.dash-to-panel app-shift-hotkey-3 "['<Shift><Super>3']"
gsettings set org.gnome.shell.extensions.dash-to-panel app-shift-hotkey-4 "['<Shift><Super>4']"
gsettings set org.gnome.shell.extensions.dash-to-panel app-shift-hotkey-5 "['<Shift><Super>5']"
gsettings set org.gnome.shell.extensions.dash-to-panel app-shift-hotkey-6 "['<Shift><Super>6']"
gsettings set org.gnome.shell.extensions.dash-to-panel app-shift-hotkey-7 "['<Shift><Super>7']"
gsettings set org.gnome.shell.extensions.dash-to-panel app-shift-hotkey-8 "['<Shift><Super>8']"
gsettings set org.gnome.shell.extensions.dash-to-panel app-shift-hotkey-9 "['<Shift><Super>9']"
gsettings set org.gnome.shell.extensions.dash-to-panel app-shift-hotkey-kp-1 "['<Shift><Super>KP_1']"
gsettings set org.gnome.shell.extensions.dash-to-panel app-shift-hotkey-kp-10 "['<Shift><Super>KP_0']"
gsettings set org.gnome.shell.extensions.dash-to-panel app-shift-hotkey-kp-2 "['<Shift><Super>KP_2']"
gsettings set org.gnome.shell.extensions.dash-to-panel app-shift-hotkey-kp-3 "['<Shift><Super>KP_3']"
gsettings set org.gnome.shell.extensions.dash-to-panel app-shift-hotkey-kp-4 "['<Shift><Super>KP_4']"
gsettings set org.gnome.shell.extensions.dash-to-panel app-shift-hotkey-kp-5 "['<Shift><Super>KP_5']"
gsettings set org.gnome.shell.extensions.dash-to-panel app-shift-hotkey-kp-6 "['<Shift><Super>KP_6']"
gsettings set org.gnome.shell.extensions.dash-to-panel app-shift-hotkey-kp-7 "['<Shift><Super>KP_7']"
gsettings set org.gnome.shell.extensions.dash-to-panel app-shift-hotkey-kp-8 "['<Shift><Super>KP_8']"
gsettings set org.gnome.shell.extensions.dash-to-panel app-shift-hotkey-kp-9 "['<Shift><Super>KP_9']"
gsettings set org.gnome.shell.extensions.dash-to-panel appicon-margin 4
gsettings set org.gnome.shell.extensions.dash-to-panel appicon-padding 4
gsettings set org.gnome.shell.extensions.dash-to-panel appicon-style 'NORMAL'
gsettings set org.gnome.shell.extensions.dash-to-panel available-monitors "[0]"
gsettings set org.gnome.shell.extensions.dash-to-panel click-action 'CYCLE-MIN'
gsettings set org.gnome.shell.extensions.dash-to-panel customize-click true
gsettings set org.gnome.shell.extensions.dash-to-panel desktop-line-custom-color 'rgba(200,200,200,0.2)'
gsettings set org.gnome.shell.extensions.dash-to-panel desktop-line-use-custom-color false
gsettings set org.gnome.shell.extensions.dash-to-panel dot-color-1 '#5294e2'
gsettings set org.gnome.shell.extensions.dash-to-panel dot-color-2 '#5294e2'
gsettings set org.gnome.shell.extensions.dash-to-panel dot-color-3 '#5294e2'
gsettings set org.gnome.shell.extensions.dash-to-panel dot-color-4 '#5294e2'
gsettings set org.gnome.shell.extensions.dash-to-panel dot-color-dominant false
gsettings set org.gnome.shell.extensions.dash-to-panel dot-color-override false
gsettings set org.gnome.shell.extensions.dash-to-panel dot-color-unfocused-1 '#5294e2'
gsettings set org.gnome.shell.extensions.dash-to-panel dot-color-unfocused-2 '#5294e2'
gsettings set org.gnome.shell.extensions.dash-to-panel dot-color-unfocused-3 '#5294e2'
gsettings set org.gnome.shell.extensions.dash-to-panel dot-color-unfocused-4 '#5294e2'
gsettings set org.gnome.shell.extensions.dash-to-panel dot-color-unfocused-different false
gsettings set org.gnome.shell.extensions.dash-to-panel dot-position 'BOTTOM'
gsettings set org.gnome.shell.extensions.dash-to-panel dot-size 5
gsettings set org.gnome.shell.extensions.dash-to-panel dot-style-focused 'DOTS'
gsettings set org.gnome.shell.extensions.dash-to-panel dot-style-unfocused 'DOTS'
gsettings set org.gnome.shell.extensions.dash-to-panel enter-peek-mode-timeout 500
gsettings set org.gnome.shell.extensions.dash-to-panel focus-highlight true
gsettings set org.gnome.shell.extensions.dash-to-panel focus-highlight-color '#EEEEEE'
gsettings set org.gnome.shell.extensions.dash-to-panel focus-highlight-dominant false
gsettings set org.gnome.shell.extensions.dash-to-panel focus-highlight-opacity 25
gsettings set org.gnome.shell.extensions.dash-to-panel group-apps true
gsettings set org.gnome.shell.extensions.dash-to-panel group-apps-label-font-color '#dddddd'
gsettings set org.gnome.shell.extensions.dash-to-panel group-apps-label-font-color-minimized '#dddddd'
gsettings set org.gnome.shell.extensions.dash-to-panel group-apps-label-font-size 14
gsettings set org.gnome.shell.extensions.dash-to-panel group-apps-label-font-weight 'inherit'
gsettings set org.gnome.shell.extensions.dash-to-panel group-apps-label-max-width 160
gsettings set org.gnome.shell.extensions.dash-to-panel group-apps-underline-unfocused true
gsettings set org.gnome.shell.extensions.dash-to-panel group-apps-use-fixed-width true
gsettings set org.gnome.shell.extensions.dash-to-panel group-apps-use-launchers false
gsettings set org.gnome.shell.extensions.dash-to-panel hide-overview-on-startup false
gsettings set org.gnome.shell.extensions.dash-to-panel hot-keys false
gsettings set org.gnome.shell.extensions.dash-to-panel hotkey-prefix-text 'Super'
gsettings set org.gnome.shell.extensions.dash-to-panel hotkeys-overlay-combo 'TEMPORARILY'
gsettings set org.gnome.shell.extensions.dash-to-panel intellihide false
gsettings set org.gnome.shell.extensions.dash-to-panel intellihide-animation-time 200
gsettings set org.gnome.shell.extensions.dash-to-panel intellihide-behaviour 'FOCUSED_WINDOWS'
gsettings set org.gnome.shell.extensions.dash-to-panel intellihide-close-delay 400
gsettings set org.gnome.shell.extensions.dash-to-panel intellihide-enable-start-delay 2000
gsettings set org.gnome.shell.extensions.dash-to-panel intellihide-hide-from-windows false
gsettings set org.gnome.shell.extensions.dash-to-panel intellihide-key-toggle "['<Super>i']"
gsettings set org.gnome.shell.extensions.dash-to-panel intellihide-key-toggle-text '<Super>i'
gsettings set org.gnome.shell.extensions.dash-to-panel intellihide-only-secondary false
gsettings set org.gnome.shell.extensions.dash-to-panel intellihide-pressure-threshold 100
gsettings set org.gnome.shell.extensions.dash-to-panel intellihide-pressure-time 1000
gsettings set org.gnome.shell.extensions.dash-to-panel intellihide-show-in-fullscreen false
gsettings set org.gnome.shell.extensions.dash-to-panel intellihide-use-pressure false
gsettings set org.gnome.shell.extensions.dash-to-panel isolate-monitors false
gsettings set org.gnome.shell.extensions.dash-to-panel isolate-workspaces false
gsettings set org.gnome.shell.extensions.dash-to-panel leave-timeout 100
gsettings set org.gnome.shell.extensions.dash-to-panel leftbox-padding -1
gsettings set org.gnome.shell.extensions.dash-to-panel leftbox-size 0
gsettings set org.gnome.shell.extensions.dash-to-panel middle-click-action 'LAUNCH'
gsettings set org.gnome.shell.extensions.dash-to-panel minimize-shift true
gsettings set org.gnome.shell.extensions.dash-to-panel multi-monitors false
gsettings set org.gnome.shell.extensions.dash-to-panel overlay-timeout 750
gsettings set org.gnome.shell.extensions.dash-to-panel overview-click-to-exit false
gsettings set org.gnome.shell.extensions.dash-to-panel panel-anchors '{"0":"MIDDLE","1":"MIDDLE"}'
gsettings set org.gnome.shell.extensions.dash-to-panel panel-context-menu-commands "@as []"
gsettings set org.gnome.shell.extensions.dash-to-panel panel-context-menu-titles "@as []"
gsettings set org.gnome.shell.extensions.dash-to-panel panel-element-positions '{"0":[{"element":"leftBox","visible":false,"position":"stackedTL"},{"element":"taskbar","visible":true,"position":"stackedTL"},{"element":"showAppsButton","visible":true,"position":"stackedBR"},{"element":"activitiesButton","visible":false,"position":"stackedBR"},{"element":"centerBox","visible":false,"position":"stackedBR"},{"element":"rightBox","visible":false,"position":"stackedBR"},{"element":"dateMenu","visible":false,"position":"stackedBR"},{"element":"systemMenu","visible":false,"position":"stackedBR"},{"element":"desktopButton","visible":false,"position":"stackedBR"}],"1":[{"element":"showAppsButton","visible":false,"position":"stackedTL"},{"element":"activitiesButton","visible":false,"position":"stackedTL"},{"element":"leftBox","visible":false,"position":"stackedTL"},{"element":"taskbar","visible":true,"position":"stackedTL"},{"element":"centerBox","visible":false,"position":"stackedBR"},{"element":"rightBox","visible":false,"position":"stackedBR"},{"element":"dateMenu","visible":false,"position":"stackedBR"},{"element":"systemMenu","visible":false,"position":"stackedBR"},{"element":"desktopButton","visible":false,"position":"stackedBR"}]}'
gsettings set org.gnome.shell.extensions.dash-to-panel panel-element-positions-monitors-sync true
gsettings set org.gnome.shell.extensions.dash-to-panel panel-lengths '{"0":100,"1":100}'
gsettings set org.gnome.shell.extensions.dash-to-panel panel-position 'BOTTOM'
gsettings set org.gnome.shell.extensions.dash-to-panel panel-positions '{"0":"LEFT","1":"LEFT"}'
gsettings set org.gnome.shell.extensions.dash-to-panel panel-size 48
gsettings set org.gnome.shell.extensions.dash-to-panel panel-sizes '{"0":64,"1":64}'
gsettings set org.gnome.shell.extensions.dash-to-panel peek-mode true
gsettings set org.gnome.shell.extensions.dash-to-panel peek-mode-opacity 40
gsettings set org.gnome.shell.extensions.dash-to-panel preview-custom-opacity 80
gsettings set org.gnome.shell.extensions.dash-to-panel preview-middle-click-close true
gsettings set org.gnome.shell.extensions.dash-to-panel preview-use-custom-opacity true
gsettings set org.gnome.shell.extensions.dash-to-panel primary-monitor 0
gsettings set org.gnome.shell.extensions.dash-to-panel progress-show-bar true
gsettings set org.gnome.shell.extensions.dash-to-panel progress-show-count true
gsettings set org.gnome.shell.extensions.dash-to-panel scroll-icon-action 'CYCLE_WINDOWS'
gsettings set org.gnome.shell.extensions.dash-to-panel scroll-icon-delay 0
gsettings set org.gnome.shell.extensions.dash-to-panel scroll-panel-action 'SWITCH_WORKSPACE'
gsettings set org.gnome.shell.extensions.dash-to-panel scroll-panel-delay 0
gsettings set org.gnome.shell.extensions.dash-to-panel scroll-panel-show-ws-popup true
gsettings set org.gnome.shell.extensions.dash-to-panel secondarymenu-contains-appmenu true
gsettings set org.gnome.shell.extensions.dash-to-panel secondarymenu-contains-showdetails false
gsettings set org.gnome.shell.extensions.dash-to-panel shift-click-action 'MINIMIZE'
gsettings set org.gnome.shell.extensions.dash-to-panel shift-middle-click-action 'LAUNCH'
gsettings set org.gnome.shell.extensions.dash-to-panel shortcut "['<Super>q']"
gsettings set org.gnome.shell.extensions.dash-to-panel shortcut-num-keys 'BOTH'
gsettings set org.gnome.shell.extensions.dash-to-panel shortcut-previews false
gsettings set org.gnome.shell.extensions.dash-to-panel shortcut-text '<Super>q'
gsettings set org.gnome.shell.extensions.dash-to-panel shortcut-timeout 2000
gsettings set org.gnome.shell.extensions.dash-to-panel show-activities-button false
gsettings set org.gnome.shell.extensions.dash-to-panel show-apps-button-context-menu-commands "@as []"
gsettings set org.gnome.shell.extensions.dash-to-panel show-apps-button-context-menu-titles "@as []"
gsettings set org.gnome.shell.extensions.dash-to-panel show-apps-icon-file ''
gsettings set org.gnome.shell.extensions.dash-to-panel show-apps-icon-side-padding 8
gsettings set org.gnome.shell.extensions.dash-to-panel show-apps-override-escape true
gsettings set org.gnome.shell.extensions.dash-to-panel show-favorites true
gsettings set org.gnome.shell.extensions.dash-to-panel show-favorites-all-monitors true
gsettings set org.gnome.shell.extensions.dash-to-panel show-running-apps true
gsettings set org.gnome.shell.extensions.dash-to-panel show-showdesktop-delay 1000
gsettings set org.gnome.shell.extensions.dash-to-panel show-showdesktop-hover false
gsettings set org.gnome.shell.extensions.dash-to-panel show-showdesktop-time 300
gsettings set org.gnome.shell.extensions.dash-to-panel show-tooltip true
gsettings set org.gnome.shell.extensions.dash-to-panel show-window-previews true
gsettings set org.gnome.shell.extensions.dash-to-panel show-window-previews-timeout 400
gsettings set org.gnome.shell.extensions.dash-to-panel showdesktop-button-width 8
gsettings set org.gnome.shell.extensions.dash-to-panel status-icon-padding -1
gsettings set org.gnome.shell.extensions.dash-to-panel stockgs-force-hotcorner false
gsettings set org.gnome.shell.extensions.dash-to-panel stockgs-keep-dash false
gsettings set org.gnome.shell.extensions.dash-to-panel stockgs-keep-top-panel true
gsettings set org.gnome.shell.extensions.dash-to-panel stockgs-panelbtn-click-only false
gsettings set org.gnome.shell.extensions.dash-to-panel taskbar-locked false
gsettings set org.gnome.shell.extensions.dash-to-panel trans-bg-color '#241f31'
gsettings set org.gnome.shell.extensions.dash-to-panel trans-dynamic-anim-target 1.0
gsettings set org.gnome.shell.extensions.dash-to-panel trans-dynamic-anim-time 300
gsettings set org.gnome.shell.extensions.dash-to-panel trans-dynamic-behavior 'ALL_WINDOWS'
gsettings set org.gnome.shell.extensions.dash-to-panel trans-dynamic-distance 20
gsettings set org.gnome.shell.extensions.dash-to-panel trans-gradient-bottom-color '#000'
gsettings set org.gnome.shell.extensions.dash-to-panel trans-gradient-bottom-opacity 0.20000000000000001
gsettings set org.gnome.shell.extensions.dash-to-panel trans-gradient-top-color '#000'
gsettings set org.gnome.shell.extensions.dash-to-panel trans-gradient-top-opacity 0.0
gsettings set org.gnome.shell.extensions.dash-to-panel trans-panel-opacity 0.20000000000000001
gsettings set org.gnome.shell.extensions.dash-to-panel trans-use-custom-bg true
gsettings set org.gnome.shell.extensions.dash-to-panel trans-use-custom-gradient false
gsettings set org.gnome.shell.extensions.dash-to-panel trans-use-custom-opacity true
gsettings set org.gnome.shell.extensions.dash-to-panel trans-use-dynamic-opacity true
gsettings set org.gnome.shell.extensions.dash-to-panel tray-padding -1
gsettings set org.gnome.shell.extensions.dash-to-panel tray-size 0
gsettings set org.gnome.shell.extensions.dash-to-panel window-preview-animation-time 260
gsettings set org.gnome.shell.extensions.dash-to-panel window-preview-aspect-ratio-x 16
gsettings set org.gnome.shell.extensions.dash-to-panel window-preview-aspect-ratio-y 9
gsettings set org.gnome.shell.extensions.dash-to-panel window-preview-custom-icon-size 16
gsettings set org.gnome.shell.extensions.dash-to-panel window-preview-fixed-x false
gsettings set org.gnome.shell.extensions.dash-to-panel window-preview-fixed-y true
gsettings set org.gnome.shell.extensions.dash-to-panel window-preview-hide-immediate-click false
gsettings set org.gnome.shell.extensions.dash-to-panel window-preview-manual-styling false
gsettings set org.gnome.shell.extensions.dash-to-panel window-preview-padding 8
gsettings set org.gnome.shell.extensions.dash-to-panel window-preview-show-title true
gsettings set org.gnome.shell.extensions.dash-to-panel window-preview-size 240
gsettings set org.gnome.shell.extensions.dash-to-panel window-preview-title-font-color '#dddddd'
gsettings set org.gnome.shell.extensions.dash-to-panel window-preview-title-font-size 14
gsettings set org.gnome.shell.extensions.dash-to-panel window-preview-title-font-weight 'inherit'
gsettings set org.gnome.shell.extensions.dash-to-panel window-preview-title-position 'TOP'
gsettings set org.gnome.shell.extensions.dash-to-panel window-preview-use-custom-icon-size false

# Configure tactile
gsettings set org.gnome.shell.extensions.tactile background-color "'rgba(128,128,255,0.1)'"
gsettings set org.gnome.shell.extensions.tactile border-color "'rgba(128,128,255,0.5)'"
gsettings set org.gnome.shell.extensions.tactile border-size "1"
gsettings set org.gnome.shell.extensions.tactile col-0 "1"
gsettings set org.gnome.shell.extensions.tactile col-1 "1"
gsettings set org.gnome.shell.extensions.tactile col-2 "0"
gsettings set org.gnome.shell.extensions.tactile col-3 "0"
gsettings set org.gnome.shell.extensions.tactile col-4 "0"
gsettings set org.gnome.shell.extensions.tactile col-5 "0"
gsettings set org.gnome.shell.extensions.tactile col-6 "0"
gsettings set org.gnome.shell.extensions.tactile debug "false"
gsettings set org.gnome.shell.extensions.tactile gap-size "0"
gsettings set org.gnome.shell.extensions.tactile grid-cols "4"
gsettings set org.gnome.shell.extensions.tactile grid-rows "3"
gsettings set org.gnome.shell.extensions.tactile hide-tiles "['Escape']"
gsettings set org.gnome.shell.extensions.tactile layout-1 "['1']"
gsettings set org.gnome.shell.extensions.tactile layout-2 "['2']"
gsettings set org.gnome.shell.extensions.tactile layout-2-col-0 "1"
gsettings set org.gnome.shell.extensions.tactile layout-2-col-1 "1"
gsettings set org.gnome.shell.extensions.tactile layout-2-col-2 "1"
gsettings set org.gnome.shell.extensions.tactile layout-2-col-3 "1"
gsettings set org.gnome.shell.extensions.tactile layout-2-col-4 "0"
gsettings set org.gnome.shell.extensions.tactile layout-2-col-5 "0"
gsettings set org.gnome.shell.extensions.tactile layout-2-col-6 "0"
gsettings set org.gnome.shell.extensions.tactile layout-2-row-0 "1"
gsettings set org.gnome.shell.extensions.tactile layout-2-row-1 "1"
gsettings set org.gnome.shell.extensions.tactile layout-2-row-2 "1"
gsettings set org.gnome.shell.extensions.tactile layout-2-row-3 "0"
gsettings set org.gnome.shell.extensions.tactile layout-2-row-4 "0"
gsettings set org.gnome.shell.extensions.tactile layout-3 "['3']"
gsettings set org.gnome.shell.extensions.tactile layout-3-col-0 "1"
gsettings set org.gnome.shell.extensions.tactile layout-3-col-1 "1"
gsettings set org.gnome.shell.extensions.tactile layout-3-col-2 "1"
gsettings set org.gnome.shell.extensions.tactile layout-3-col-3 "1"
gsettings set org.gnome.shell.extensions.tactile layout-3-col-4 "0"
gsettings set org.gnome.shell.extensions.tactile layout-3-col-5 "0"
gsettings set org.gnome.shell.extensions.tactile layout-3-col-6 "0"
gsettings set org.gnome.shell.extensions.tactile layout-3-row-0 "1"
gsettings set org.gnome.shell.extensions.tactile layout-3-row-1 "1"
gsettings set org.gnome.shell.extensions.tactile layout-3-row-2 "1"
gsettings set org.gnome.shell.extensions.tactile layout-3-row-3 "0"
gsettings set org.gnome.shell.extensions.tactile layout-3-row-4 "0"
gsettings set org.gnome.shell.extensions.tactile layout-4 "['4']"
gsettings set org.gnome.shell.extensions.tactile layout-4-col-0 "1"
gsettings set org.gnome.shell.extensions.tactile layout-4-col-1 "1"
gsettings set org.gnome.shell.extensions.tactile layout-4-col-2 "1"
gsettings set org.gnome.shell.extensions.tactile layout-4-col-3 "1"
gsettings set org.gnome.shell.extensions.tactile layout-4-col-4 "0"
gsettings set org.gnome.shell.extensions.tactile layout-4-col-5 "0"
gsettings set org.gnome.shell.extensions.tactile layout-4-col-6 "0"
gsettings set org.gnome.shell.extensions.tactile layout-4-row-0 "1"
gsettings set org.gnome.shell.extensions.tactile layout-4-row-1 "1"
gsettings set org.gnome.shell.extensions.tactile layout-4-row-2 "1"
gsettings set org.gnome.shell.extensions.tactile layout-4-row-3 "0"
gsettings set org.gnome.shell.extensions.tactile layout-4-row-4 "0"
gsettings set org.gnome.shell.extensions.tactile maximize "true"
gsettings set org.gnome.shell.extensions.tactile monitor-0-layout "1"
gsettings set org.gnome.shell.extensions.tactile monitor-1-layout "1"
gsettings set org.gnome.shell.extensions.tactile monitor-2-layout "1"
gsettings set org.gnome.shell.extensions.tactile monitor-3-layout "1"
gsettings set org.gnome.shell.extensions.tactile monitor-4-layout "1"
gsettings set org.gnome.shell.extensions.tactile monitor-5-layout "1"
gsettings set org.gnome.shell.extensions.tactile next-monitor "['space']"
gsettings set org.gnome.shell.extensions.tactile prev-monitor "['<Shift>space']"
gsettings set org.gnome.shell.extensions.tactile row-0 "1"
gsettings set org.gnome.shell.extensions.tactile row-1 "1"
gsettings set org.gnome.shell.extensions.tactile row-2 "0"
gsettings set org.gnome.shell.extensions.tactile row-3 "0"
gsettings set org.gnome.shell.extensions.tactile row-4 "0"
gsettings set org.gnome.shell.extensions.tactile show-settings "['<Super><Shift>t']"
gsettings set org.gnome.shell.extensions.tactile show-tiles "['<Super>t']"
gsettings set org.gnome.shell.extensions.tactile text-color "'rgba(128,128,255,1.0)'"
gsettings set org.gnome.shell.extensions.tactile text-size "48"
gsettings set org.gnome.shell.extensions.tactile tile-0-0 "['q']"
gsettings set org.gnome.shell.extensions.tactile tile-0-1 "['a']"
gsettings set org.gnome.shell.extensions.tactile tile-0-2 "['z']"
gsettings set org.gnome.shell.extensions.tactile tile-0-3 "@as []"
gsettings set org.gnome.shell.extensions.tactile tile-0-4 "@as []"
gsettings set org.gnome.shell.extensions.tactile tile-1-0 "['w']"
gsettings set org.gnome.shell.extensions.tactile tile-1-1 "['s']"
gsettings set org.gnome.shell.extensions.tactile tile-1-2 "['x']"
gsettings set org.gnome.shell.extensions.tactile tile-1-3 "@as []"
gsettings set org.gnome.shell.extensions.tactile tile-1-4 "@as []"
gsettings set org.gnome.shell.extensions.tactile tile-2-0 "['e']"
gsettings set org.gnome.shell.extensions.tactile tile-2-1 "['d']"
gsettings set org.gnome.shell.extensions.tactile tile-2-2 "['c']"
gsettings set org.gnome.shell.extensions.tactile tile-2-3 "@as []"
gsettings set org.gnome.shell.extensions.tactile tile-2-4 "@as []"
gsettings set org.gnome.shell.extensions.tactile tile-3-0 "['r']"
gsettings set org.gnome.shell.extensions.tactile tile-3-1 "['f']"
gsettings set org.gnome.shell.extensions.tactile tile-3-2 "['v']"
gsettings set org.gnome.shell.extensions.tactile tile-3-3 "@as []"
gsettings set org.gnome.shell.extensions.tactile tile-3-4 "@as []"
gsettings set org.gnome.shell.extensions.tactile tile-4-0 "['t']"
gsettings set org.gnome.shell.extensions.tactile tile-4-1 "['g']"
gsettings set org.gnome.shell.extensions.tactile tile-4-2 "['b']"
gsettings set org.gnome.shell.extensions.tactile tile-4-3 "@as []"
gsettings set org.gnome.shell.extensions.tactile tile-4-4 "@as []"
gsettings set org.gnome.shell.extensions.tactile tile-5-0 "['y']"
gsettings set org.gnome.shell.extensions.tactile tile-5-1 "['h']"
gsettings set org.gnome.shell.extensions.tactile tile-5-2 "['n']"
gsettings set org.gnome.shell.extensions.tactile tile-5-3 "@as []"
gsettings set org.gnome.shell.extensions.tactile tile-5-4 "@as []"
gsettings set org.gnome.shell.extensions.tactile tile-6-0 "['u']"
gsettings set org.gnome.shell.extensions.tactile tile-6-1 "['j']"
gsettings set org.gnome.shell.extensions.tactile tile-6-2 "['m']"
gsettings set org.gnome.shell.extensions.tactile tile-6-3 "@as []"
gsettings set org.gnome.shell.extensions.tactile tile-6-4 "@as []"
