schema="$1"

for key in $(gsettings list-keys $schema); do
  value="$(gsettings get $schema $key)"
  echo "gsettings set $schema $key \"$value\""
done
