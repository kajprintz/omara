if [ -z "$1" ]; then
  gum log --level "error" "No command to spin on..."
  exit
fi

# Set command to spin on and message to present, default "Working..."
command="$1"
message="${2:-Working...}"

# Cache credentials - gum spin cannot ask for credentials
sudo -v

gum spin --spinner dot --title "$message" -- $command
