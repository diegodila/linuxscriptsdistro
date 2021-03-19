echo "Installation Config Linux"

sudo pacman -Sy 
sudo pacman -Syu
sudo pacman -S base-devel
sudo pacman -S git
#sudo git clone https://aur.archlinux.org/yay.git /opt/
#sudo chown -R diegodila:users ./opt/yay
#sudo chown -R diegodila:users ./opt/yay
#cd /opt/yay/
#makepkg -si

chmod 555 $HOME/Downloads/install.sh
chmod 555 $HOME/Projects/config/install.sh
echo "Configuring Git, global username and email and credetial"
git config --global user.name "Diego Ferreira Gonçalves"
git config --global user.email "ferreira.dfg@gmail.com"
git config --global credential.helper 'cache --timeout=172800'

mkdir $HOME/Projects
cd $HOME/Projects
echo "Cloning Github Repositorys, datastructure config javaclub pythonclub"
git clone https://github.com/diegodila/cloudplatform.git
git clone https://github.com/diegodila/config.git
git clone https://github.com/diegodila/database.git
git clone https://github.com/diegodila/datastructure.git
git clone https://github.com/diegodila/fiap.git
git clone https://github.com/diegodila/governance.git
git clone https://github.com/diegodila/javaclub.git
git clone https://github.com/diegodila/pythonclub.git

cd $HOME/Projects/cloudplatform
echo "Configuring Repository to pull rebase true"
git config pull.rebase true
echo "Configuring Repository to add new url push"
git remote set-url --add origin https://gitlab.com/diegodila/cloudplatform.git
echo "Show Git remotes"
git remote -v

cd $HOME/Projects/config
echo "Configuring Repository to pull rebase true"
git config pull.rebase true
echo "Configuring Repository to add new url push"
git remote set-url --add origin https://gitlab.com/diegodila/config.git
echo "Show Git remotes"
git remote -v

cd $HOME/Projects/database
echo "Configuring Repository to pull rebase true"
git config pull.rebase true
echo "Configuring Repository to add new url push"
git remote set-url --add origin https://gitlab.com/diegodila/database.git
echo "Show Git remotes"
git remote -v

cd $HOME/Projects/datastructure
echo "Configuring Repository to pull rebase true"
git config pull.rebase true
echo "Configuring Repository to add new url push"
git remote set-url --add origin https://gitlab.com/diegodila/datastructure.git
echo "Show Git remotes"
git remote -v

cd $HOME/Projects/datastructure
echo "Configuring Repository to pull rebase true"
git config pull.rebase true
echo "Configuring Repository to add new url push"
git remote set-url --add origin https://gitlab.com/diegodila/datastructure.git
echo "Show Git remotes"
git remote -v

cd $HOME/Projects/fiap
echo "Configuring Repository to pull rebase true"
git config pull.rebase true
echo "Configuring Repository to add new url push"
git remote set-url --add origin https://gitlab.com/diegodila/fiap.git
echo "Show Git remotes"
git remote -v

cd $HOME/Projects/governance
echo "Configuring Repository to pull rebase true"
git config pull.rebase true
echo "Configuring Repository to add new url push"
git remote set-url --add origin https://gitlab.com/diegodila/governance.git
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

echo "Configuring theme cinnamon top panel, transparency 40%"
cp -r /usr/share/themes/Arc $HOME/.themes/
rm $HOME/.themes/Arc/cinnamon/cinnamon.css
cp $HOME/Projects/config/cinnamon/cinnamon.css $HOME/.themes/Mint-Y-Aqua/cinnamon/

echo "Applications Installating"
sudo pacman -Syu
yay -S $(cat $HOME/Projects/config/installationdistro/packages.txt)
#yay -S papirus-icon-theme arc-gtk-theme ttf-meslo-nerd-font-powerlevel10k volantes-cursors
#yay -S zsh alacritty tilda plank visual-studio-code-bin insync discord teams
#yay -S microsoft-edge-dev-bin obs-studio grub-customizer
#yay -S xed pix gitflow-avh android-studio oracle-sqldeveloper displaymanager-openrc

echo "Installation extensions vscode"
cat $HOME/Projects/config/vscode/extensions.txt | xargs -L 1 code --install-extension

echo "Installation Oh My Zsh"
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
echo "Installation finish Oh My Zsh"
echo "Installation Powerlevel10k"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
echo "Installation finish Powerlevel10k"

echo "Configuring Alacritty terminal, theme and keybindings"
mkdir $HOME/.config/alacritty
cp $HOME/Projects/config/alacritty/alacritty.yml $HOME/.config/alacritty/
echo "Finish"

cd $HOME/Downloads
echo "Installation Intellij Idea"
wget https://download.jetbrains.com/idea/ideaIC-2020.3.3.tar.gz
sudo tar -xzf ideaIC-2020.3.2.tar.gz -C /opt
/opt/idea-IC-*/bin/idea.sh

echo "Installation DataGrip IDE"
wget https://download.jetbrains.com/datagrip/datagrip-2020.3.2.tar.gz
sudo tar xzf datagrip-*.tar.gz -C /opt/
/opt/datagrip-*/bin/datagrip.sh

echo "Installation Pycharm IDE"
wget https://download.jetbrains.com/python/pycharm-community-2020.3.4.tar.gz
sudo tar xzf pycharm-*.tar.gz -C /opt/
/opt/pycharm-*/bin/pycharm.sh

echo "Installing Eclipse"
sudo tar -zxvf $HOME/Downloads/eclipse-*.tar.gz -C /opt
/opt/eclipse-installer/eclipse-inst
echo "Create symbolic link eclipse"
sudo ln -s $HOME/eclipse/*/eclipse/eclipse /usr/bin/eclipse
echo "[Desktop Entry]
Encoding=UTF-8
Name=Eclipse IDE
Comment=Eclipse IDE
Exec=/usr/bin/eclipse
Icon=$HOME/eclipse/*/eclipse/icon.xpm
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

echo "Removing manjaro beep"
sudo rmmod pcspkr
echo "blacklist pcspkr" | sudo tee /etc/modprobe.d/nobeep.conf
xset -b
sudo echo 'xset -b' >> ~/.xprofile
gsettings set org.cinnamon.desktop.wm.preferences audible-bell false
