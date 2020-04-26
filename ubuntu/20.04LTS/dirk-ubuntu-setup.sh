sudo apt upgrade -y
sudo apt update -y
sudo apt install docker.io -y
sudo systemctl enable --now docker
sudo groupadd docker
newgrp docker
sudo usermod -aG docker $USER
sudo snap install intellij-idea-ultimate --classic

