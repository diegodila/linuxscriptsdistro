echo "Installation packages and repositorys Artix Linux"

sudo pacman -Sy 
sudo pacman -Syu
sudo pacman -S base-devel wget
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
git config --global credential.helper store
# git config --global credential.helper 'cache --timeout=172800'

mkdir $HOME/Projects

sudo sh $HOME/Projects/config/repository/clones.sh
# sudo sh $HOME/Projects/config/repository/confrepos.sh
sh $HOME/Projects/config/repository/confrepos.sh


echo "Installing Applications"
sudo pacman -Syu
yay -S $(cat $HOME/Projects/config/packages/community)
yay -S $(cat $HOME/Projects/config/packages/AUR)

echo "Installation extensions vscode"
cat $HOME/Projects/config/vscode/extensions.txt | xargs -L 1 code --install-extension

echo "Configuring theme cinnamon top panel, transparency 40%"
cp -r /usr/share/themes/Arc $HOME/.themes/
rm $HOME/.themes/Arc/cinnamon/cinnamon.css
cp $HOME/Projects/config/cinnamon/cinnamon.css $HOME/.themes/Arc/cinnamon/

echo "Installing Oh My Zsh"
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
echo "Installing finish Oh My Zsh"
 
echo "Installing Powerlevel10k"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
echo "Installation finish Powerlevel10k"

echo "Configuring Alacritty terminal, theme and keybindings"
mkdir $HOME/.config/alacritty
cp $HOME/Projects/config/alacritty/alacritty.yml $HOME/.config/alacritty/
echo "----------------------------------FINISH----------------------------------"

echo "Installing Intellij Idea"
yay -S aur/intellij-idea-ultimate-edition
# wget https://download.jetbrains.com/idea/ideaIC-2020.3.3.tar.gz
# sudo tar -xzf ideaIC-2020.3.2.tar.gz -C /opt
# sudo tar -xzf $HOME/Downloads/ideaIC*.tar.gz -C /opt
# /opt/idea-IC-*/bin/idea.sh

echo "Installing DataGrip IDE"
yay -S datagrip
# wget https://download.jetbrains.com/datagrip/datagrip-2020.3.2.tar.gz
# sudo tar xzf datagrip-*.tar.gz -C /opt/
# sudo tar xzf $HOME/Downloads/datagrip-*.tar.gz -C /opt/
# /opt/datagrip-*/bin/datagrip.sh
# /opt/DataGrip-*/bin/datagrip.sh

echo "Installing Pycharm IDE"
yay -S aur/pycharm-professional
# wget https://download.jetbrains.com/python/pycharm-community-2020.3.4.tar.gz
# sudo tar xzf pycharm-*.tar.gz -C /opt/
# /opt/pycharm-*/bin/pycharm.sh

echo "Installing Eclipse"
wget -c http://eclipse.c3sl.ufpr.br/technology/epp/downloads/release/2021-03/R/eclipse-java-2021-03-R-linux-gtk-x86_64.tar.gz -O eclipse.tar.gz
sudo tar -zxvf $HOME/Downloads/eclipse*.tar.gz -C /opt
echo "Create symbolic link eclipse"
sudo ln -s /opt/eclipse/eclipse /usr/bin/eclipse
echo "[Desktop Entry]
Encoding=UTF-8
Name=Eclipse IDE
Comment=Eclipse IDE
Exec=/usr/bin/eclipse
Icon=/opt/eclipse/icon.xpm
Categories=Application;Development;Java;IDE
Version=4.8
Type=Application
Terminal=0" | sudo tee -a /usr/share/applications/eclipse.desktop # add -a for append (>>)

sudo sh $HOME/Projects/config/packages/docker.sh

echo "Removing manjaro beep"
sudo rmmod pcspkr
echo "blacklist pcspkr" | sudo tee /etc/modprobe.d/nobeep.conf
xset -b
sudo echo 'xset -b' >> ~/.xprofile
gsettings set org.cinnamon.desktop.wm.preferences audible-bell false

yay -R $(cat $HOME/Projects/config/packages/remove)
