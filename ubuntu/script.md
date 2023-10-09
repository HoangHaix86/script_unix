# Script

```bash
ssh-keygen -t ed25519 -C "hai.hoang.2762@gmail.com" -f ~/.ssh/github_HoangHaix86
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/github_HoangHaix86

sudo apt install xclip -y
cat ~/.ssh/github_HoangHaix86.pub | xclip -sel clip

sudo apt-get install wget gpg
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -D -o root -g root -m 644 packages.microsoft.gpg /etc/apt/keyrings/packages.microsoft.gpg
sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
rm -f packages.microsoft.gpg

sudo apt install apt-transport-https
sudo apt update
sudo apt install code

sudo wget https://download.jetbrains.com/toolbox/jetbrains-toolbox-2.0.4.17212.tar.gz && \
    tar -xzf jetbrains-toolbox-2.0.4.17212.tar.gz jetbrains-toolbox && \
    rm jetbrains-toolbox-2.0.4.17212.tar.gz
    sudo mv jetbrains-toolbox /opt/
```