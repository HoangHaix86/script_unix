# Script

1. Ibus Bamboo

    ```shell
    echo 'deb http://download.opensuse.org/repositories/home:/lamlng/xUbuntu_23.04/ /' | sudo tee /etc/apt/sources.list.d/home:lamlng.list
    curl -fsSL https://download.opensuse.org/repositories/home:lamlng/xUbuntu_23.04/Release.key | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/home_lamlng.gpg > /dev/null
    sudo apt update
    sudo apt install ibus-bamboo
    ```

2. Visual Studio Code

    ```shell
    
    sudo apt-get install wget gpg
    wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
    sudo install -D -o root -g root -m 644 packages.microsoft.gpg /etc/apt/keyrings/packages.microsoft.gpg
    sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
    rm -f packages.microsoft.gpg

    sudo apt install apt-transport-https
    sudo apt update
    sudo apt install code # or code-insiders
    ```

3. JetBrains Toolbox

    ```shell
    sudo apt install -y libfuse2
    wget https://download.jetbrains.com/toolbox/jetbrains-toolbox-2.0.4.17212.tar.gz
    tar -xzf jetbrains-toolbox-2.0.4.17212.tar.gz 
    rm jetbrains-toolbox-2.0.4.17212.tar.gz
    mv jetbrains-toolbox-2.0.4.17212 jetbrains-toolbox
    sudo mv jetbrains-toolbox /opt
    /opt/jetbrains-toolbox/jetbrains-toolbox
    ```

4. Docker Engine

    ```shell
    for pkg in docker.io docker-doc docker-compose podman-docker containerd runc; do sudo apt-get remove $pkg; done

    # Add Docker's official GPG key:
    sudo apt-get update
    sudo apt-get install ca-certificates curl gnupg
    sudo install -m 0755 -d /etc/apt/keyrings
    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
    sudo chmod a+r /etc/apt/keyrings/docker.gpg

    # Add the repository to Apt sources:
    echo \
    "deb [arch="$(dpkg --print-architecture)" signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
    "$(. /etc/os-release && echo "$VERSION_CODENAME")" stable" | \
    sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
    sudo apt-get update

    sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

    sudo usermod -aG docker $USER

    ```

```bash
ssh-keygen -t ed25519 -C "hai.hoang.2762@gmail.com" -f ~/.ssh/github_HoangHaix86
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/github_HoangHaix86

sudo apt install xclip -y
cat ~/.ssh/github_HoangHaix86.pub | xclip -sel clip

