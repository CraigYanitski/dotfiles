#!/bin/bash
# Here we ensure all of the necessary packages are up-to-date and downloaded
sudo apt-get update
sudo apt-get install -y curl libgl1-mesa-glx libegl1-mesa libxrandr2 libxrandr2 
sudo apt-get install -y libxss1 libxcursor1 libxcomposite1 libasound2 libxi6 libxtst6
sudo apt-get install -y neovim htop
sudo apt-get install -y texlive-xetex texlive-fonts-recommended texlive-plain-generic
# Now we want to install the desired fonts (MesloLGS NF, Flux)
mkdir ~/.local/share/fonts
cp *.ttf ~/.local/share/fonts
fc-cache -f -v
# Download and initialise the latest Anaconda3. Of course we have to first ensure the file name is updated before downloading
<< 'FIX BEFORE USING'
   cd ~/Downloads/
   wget "https://repo.anaconda.com/archive/Anaconda3-2022.05-Linux-x86_64.sh"
   chmod +x Anaconda3-2022.05-Linux-x86_64.sh
   ./Anaconda3-2022.05-Linux-x86_64.sh
FIX BEFORE USING
# Transfer the dotfiles to the home directory
cd ~
cp ~/dotfiles/.bash_aliases ~/.bash_aliases
cp ~/dotfiles/.zshrc ~/.zshrc
cp ~/dotfiles/.zshrc.zni ~/.zshrc.zni
cp ~/dotfiles/.zpreztorc ~/.zpreztorc
cp ~/dotfiles/.p1ok.zsh ~/.p10k.zsh
# Install zsh
sudo apt-get -y install zsh
zsh
# Install zprezto
git clone --recursive https://github.com/sorin-ionescu/prezto.git "{ZDOTDIR:-HOME}/.zprezto"
# Edit .zshrc to use zprezto
echo '# Run zprezto init file' >> ~.zshrc
echo 'source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"' >> ~/.zshrc
# Change default shell to zsh
chsh -s /bin/zsh
# Download kitty terminal
curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin launch=n
# Execute rc files
exec zsh
# Download atom editor
wget -qO - https://packagecloud.io/AtomEditor/atom/gpgkey | sudo apt-key add
sudo sh -c 'echo "deb [arch=amd64] https://packagecloud.io/AtomEditor/atom/any/ any main" /etc/apt/sources.list.d/atom.list'
sudo apt-get install atom
