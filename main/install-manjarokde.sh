echo "Installation packages and repositories Artix Linux"
sudo pacman -S --needed --noconfirm archlinux-keyring
sudo pacman -Sy 
sudo pacman -Syu
sudo pacman -Syyu
sudo pacman -S --needed --noconfirm git base-devel
pacman-mirrors --status
#Update mirrorlist with the fastest mirrors
sudo pacman-mirrors --fasttrack && sudo pacman -Syyu
echo
# sudo pacman -S base-devel wget git
#sudo git clone https://aur.archlinux.org/yay.git /opt/
#sudo chown -R diegodila:users ./opt/yay
#sudo chown -R diegodila:users ./opt/yay
#cd /opt/yay/
#makepkg -si

# chmod 555 $HOME/Downloads/install.sh
# chmod 555 $HOME/Projects/linuxscriptsdistro/install-artix.sh

echo "Creating folder Projects"
mkdir $HOME/Projects
cd $HOME/Projects
git clone https://github.com/diegodila/linuxscriptsdistro.git

sudo chown -R diegodila:users $HOME/Projects
sh $HOME/Projects/linuxscriptsdistro/repositories/clones.sh
# sudo sh $HOME/Projects/linuxscriptsdistro/repositories/confrepos.sh
sh $HOME/Projects/linuxscriptsdistro/repositories/conf.sh


echo "Installing Applications"
sudo pacman -Syu
yay -S --needed --noconfirm $(cat $HOME/Projects/linuxscriptsdistro/packages/community)
echo
yay -S --needed --noconfirm $(cat $HOME/Projects/linuxscriptsdistro/packages/AUR)
echo

#echo "Installation extensions vscode"
#cat $HOME/Projects/linuxscriptsdistro/vscode/extensions.txt | xargs -L 1 code --install-extension


echo "Installing Oh My Zsh"
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
echo "Installing finish Oh My Zsh"
 
echo "Installing Powerlevel10k"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
echo "Installation finish Powerlevel10k"

echo "Configuring Alacritty terminal, theme and keybindings"
mkdir $HOME/.config/alacritty
cp $HOME/Projects/linuxscriptsdistro/alacritty/alacritty.yml $HOME/.config/alacritty/
echo "----------------------------------FINISH----------------------------------"

echo "Installing Intellij Idea"
yay -S aur/intellij-idea-ultimate-edition
yay -S aur/intellij-idea-ultimate-edition-jre
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

# echo "Installing Pycharm IDE"
# yay -S --noconfirm aur/pycharm-professional
# wget https://download.jetbrains.com/python/pycharm-community-2020.3.4.tar.gz
# sudo tar xzf pycharm-*.tar.gz -C /opt/
# /opt/pycharm-*/bin/pycharm.sh

# echo "Installing Eclipse"
# wget -c http://eclipse.c3sl.ufpr.br/technology/epp/downloads/release/2021-03/R/eclipse-java-2021-03-R-linux-gtk-x86_64.tar.gz -O eclipse.tar.gz
# sudo tar -zxvf $HOME/Downloads/eclipse*.tar.gz -C /opt
# echo "Create symbolic link eclipse"
# sudo ln -s /opt/eclipse/eclipse /usr/bin/eclipse
# echo "[Desktop Entry]
# Encoding=UTF-8
# Name=Eclipse IDE
# Comment=Eclipse IDE
# Exec=/usr/bin/eclipse
# Icon=/opt/eclipse/icon.xpm
# Categories=Application;Development;Java;IDE
# Version=4.8
# Type=Application
# Terminal=0" | sudo tee -a /usr/share/applications/eclipse.desktop # add -a for append (>>)

yay -R $(cat $HOME/Projects/linuxscriptsdistro/packages/remove)
echo "Setting network time"
sudo ntpd -qg

cp -r $HOME/Projects/linuxscriptsdistro/theme/icons/. $HOME/.local/share/applications/

sudo usermod -aG rfkill $USER

# yay -S nautilus nautilus-admin nautilus-open-any-terminal dconf-editor
# gsettings set com.github.stunkymonkey.nautilus-open-any-terminal terminal alacritty
# gsettings set org.cinnamon.desktop.default-applications.terminal exec alacritty

cat /proc/bus/input/devices
yay -S touchpad-toggle-xinput kde-servicemenus-rootactions
xinput list
xinput float 9
xinput disable 9
xinput disable "VirtualBox mouse integration"

#export CHROME_EXECUTABLE=path/to/chrome
#export CHROME_EXECUTABLE=/usr/bin/google-chrome-stable
