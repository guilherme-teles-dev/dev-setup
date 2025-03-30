#!/bin/bash
sudo apt install neovim -y
sudo apt install curl
sudo apt install g++
sudo snap install discord

#setup python
sudo apt-get install python3.13
sudo apt install python3-pip -y
pip install pandas
pip install matplotlib
pip install nltk
pip install --upgrade keras
pip install tensorflow
pip3 install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cpu
pip install selenium
pip install PyPDF2
pip install pathlib
pip install dotenv
pip install pytest-playwright
pip install pdplumber
pip install scrapy
pip install transformers

#setup vscode
wget "https://go.microsoft.com/fwlink/?LinkID=760868" -O vscode.deb
sudo dpkg -i vscode.deb
vscode_extensions=
	"ms-python.python"
	"ms-vscode.cpptools"
	"ms-toolsai.jupyter"
	"ms-azuretools.vscode-docker"
	"eamodio.gitlens"
	"njpwerner.autodocstring"
	"github.copilot"
	"tomoki1207.pdf"
)
for ext in "${extensions[@]}"; do
    echo "Instalando: $ext"
    code --install-extension "$ext"
done

#Docker installation
 for pkg in docker.io docker-doc docker-compose docker-compose-v2 podman-docker containerd runc; do sudo apt-get remove $pkg; done

 # Add Docker's official GPG key:
sudo apt-get update
sudo apt-get install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc

# Add the repository to Apt sources:
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "${UBUNTU_CODENAME:-$VERSION_CODENAME}") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
isudo apt-get update

sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin -y

sudo docker run hello-world


