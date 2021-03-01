sudo apt upgrade -y
sudo apt update -y
sudo apt install docker.io -y
sudo systemctl enable --now docker
sudo groupadd docker
sudo usermod -aG docker $USER
newgrp docker
export FORMAT="ID\t{{.ID}}\nNAME\t{{.Names}}\nIMAGE\t{{.Image}}\nPORTS\t{{.Ports}}\nCOMMAND\t{{.Command}}\nCREATED\t{{.CreatedAt}}\nSTATUS\t{{.Status}}\n" >> .zshrc
alias dps='docker ps --format="$FORMAT"' >> ~/.zshrc
source ~/.zshrc
