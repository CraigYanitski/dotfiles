sudo apt-get install -y curl libgl1-mesa-glx libegl1-mesa libxrandr2 libxrandr2 libxss1 libxcursor1 libxcomposite1 libasound2 libxi6 libxtst6
sudo apt-get install -y texlive-xetex texlive-fonts-recommended texlive-plain-generic
mkdir ~/.local/share/fonts
cp *.ttf ~/.local/share/fonts
fc-cache -f -v
cd ~/Downloads/
wget "https://repo.anaconda.com/archive/Anaconda3-2021.11-Linux-x86_64.sh"
chmod +x Anaconda3-2021.11-Linux-x86_64.sh
./Anaconda3-2021.11-Linux-x86_64.sh
cd
cp dotfiles/.bash_aliases .bash_aliases
cp dotfiles/.zshrc .zshrc
cp dotfiles/.zshrc.zni .zshrc.zni
cp dotfiles/.zpreztorc .zpreztorc
cp dotfiles/.p1ok.zsh .p10k.zsh
sudo apt-get -y install zsh
zsh
git clone --recursive https://github.com/sorin-ionescu/prezto.git "{ZDOTDIR:-HOME}/.zprezto"
chsh -s /bin/zsh
curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin \ launch=n
exec zsh
