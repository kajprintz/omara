# Add the official Docker repo
sudo dnf -y install dnf-plugins-core >/dev/null
sudo dnf config-manager addrepo --id=docker --set=name='Docker' --set=baseurl='https://download.docker.com/linux/fedora/docker-ce.repo' >/dev/null

source $OMARA_PATH/shared/gum-spinner.sh "sudo dnf install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin docker-ce-rootless-extras" "Installing docker..."

# Add docker group if it doesnt exist
sudo groupadd docker >/dev/null 2>&1

# Add user to the group
sudo usermod -aG docker ${USER} >/dev/null

# Limit log size to avoid running out of disk
echo '{"log-driver":"json-file","log-opts":{"max-size":"10m","max-file":"5"}}' | sudo tee /etc/docker/daemon.json >/dev/null
