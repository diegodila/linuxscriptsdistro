echo "Installation Config Linux"

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
yay -S ttf-meslo-nerd-font-powerlevel10k