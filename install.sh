echo "Installation Config Linux"

chmod 555 $HOME/Downloads/install.sh
chmod 555 $HOME/Projects/config/install.sh
echo "Configuring Git, global username and email and credetial"
git config --global user.name "Diego Ferreira Gonçalves"
git config --global user.email "ferreira.dfg@gmail.com"
git config --global credential.helper 'cache --timeout=172800'

mkdir $HOME/Projects
cd $HOME/Projects
echo "Cloning Github Repositorys, datastructure config javaclub pythonclub"
git clone https://github.com/diegodila/datastructure.git
git clone https://github.com/diegodila/config.git
git clone https://github.com/diegodila/javaclub.git
git clone https://github.com/diegodila/pythonclub.git
cd $HOME/Projects/config
echo "Configuring Repository to pull rebase true"
git config pull.rebase true
echo "Configuring Repository to add new url push"
git remote set-url --add origin https://gitlab.com/diegodila/config.git
echo "Show Git remotes"
git remote -v
cd $HOME/Projects/datastructure
echo "Configuring Repository to pull rebase true"
git config pull.rebase true
echo "Configuring Repository to add new url push"
git remote set-url --add origin https://gitlab.com/diegodila/datastructure.git
echo "Show Git remotes"
git remote -v
cd $HOME/Projects/javaclub
echo "Configuring Repository to pull rebase true"
git config pull.rebase true
echo "Configuring Repository to add new url push"
git remote set-url --add origin https://gitlab.com/diegodila/javaclub.git
echo "Show Git remotes"
git remote -v
cd $HOME/Projects/pythonclub
echo "Configuring Repository to pull rebase true"
git config pull.rebase true
echo "Configuring Repository to add new url push"
git remote set-url --add origin https://gitlab.com/diegodila/pythonclub.git
echo "Show Git remotes"
git remote -v

mkdir $HOME/.config/alacritty
cp $HOME/Projects/config/alacritty/alacritty.yml $HOME/.config/alacritty/

echo "Configuring Alacritty terminal, theme and keybindings"
mkdir $HOME/.config/alacritty
cp $HOME/Projects/config/alacritty/alacritty.yml $HOME/.config/alacritty/
echo "Finish"

echo "Configuring theme cinnamon top panel, transparency 40%"
cp -r /usr/share/themes/Mint-Y-Aqua $HOME/.themes/
rm $HOME/.themes/Mint-Y-Aqua/cinnamon/cinnamon.css
cp $HOME/Projects/config/cinnamon/cinnamon.css $HOME/.themes/Mint-Y-Aqua/cinnamon/

echo "Configuring Pacman, include colors log"
rm /etc/pacman.conf
sudo cp $HOME/Projects/config/pacman-manjaro/pacman.conf /etc/

echo "Installation extensions vscode"
cat $HOME/Projects/config/vscode/extensions.txt | xargs -L 1 code --install-extension

sudo pacman -Syu 
yay
yay -S zsh alacritty tilda brave plank microsoft-edge-dev-bin visual-studio-code-bin insync discord teams
yay -S ttf-meslo-nerd-font-powerlevel10k obs-studio arc-gtk-theme

echo "Installation Intellij Idea"
tar -xzf ideaIC-2020.3.2.tar.gz -C /opt
/opt/idea-IC-*/bin/idea.sh

echo "Installing Eclipse"
sudo tar -zxvf $HOME/Downloads/eclipse-*.tar.gz -C /opt
echo "Create symbolic link eclipse"
sudo ln -s $HOME/eclipse/*/eclipse/eclipse /usr/bin/eclipse
echo "[Desktop Entry]
Encoding=UTF-8
Name=Eclipse IDE
Comment=Eclipse IDE
Exec=/usr/bin/eclipse
Icon=$HOME/eclipse/*/eclipse/eclipse/icon.xpm
Categories=Application;Development;Java;IDE
Version=4.8
Type=Application
Terminal=0" | sudo tee -a /usr/share/applications/eclipse.desktop # add -a for append (>>)

sudo pacman -Syu
yay 
echo "Installing Docker"
yay -S docker
echo "Systemctl start Docker"
sudo systemctl start docker
sudo systemctl start docker.service
echo "Systemctl enable Docker"
sudo systemctl enable docker
sudo systemctl enable docker.service
echo "Docker version"
sudo docker version
echo "Docker info"
sudo docker info
echo "Docker usermod add"
sudo usermod -aG docker $USER