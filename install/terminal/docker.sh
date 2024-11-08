# Add the official Docker repo

sudo dnf install dnf5-plugins
sudo dnf config-manager addrepo --from-repofile=https://download.docker.com/linux/fedora/docker-ce.repo
source $OMARA_PATH/shared/gum-spinner.sh "sudo dnf install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin docker-ce-rootless-extras --repo docker-ce" "Installing docker..."

# Add docker group if it doesnt exist
sudo groupadd docker >/dev/null 2>&1

# Add user to the group
sudo usermod -aG docker ${USER} >/dev/null

# Limit log size to avoid running out of disk
echo '{"log-driver":"json-file","log-opts":{"max-size":"10m","max-file":"5"}}' | sudo tee /etc/docker/daemon.json >/dev/null
