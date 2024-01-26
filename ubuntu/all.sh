# Clone
mkdir ~/workspaces
cd ~/workspaces
git clone git@github.com:HoangHaix86/script_unix.git

cd ~/workspaces/script_unix/ubuntu


sudo chmod +x docker-install.sh
sudo chmod +x install-jetbrains-toolbox.sh
sudo chmod +x postman-install.sh
sudo chmod +x pyenv-install.sh
sudo chmod +x zsh-install.sh


sudo bash docker-install.sh
sudo bash install-jetbrains-toolbox.sh
sudo bash postman-install.sh
sudo bash pyenv-install.sh
sudo bash zsh-install.sh