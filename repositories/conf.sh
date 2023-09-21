echo "Configuring Git, global username and email and credetial"
git config --global user.name "Diego Ferreira Gonçalves"
git config --global user.email "ferreira.dfg@gmail.com"
git config --global credential.helper store
git config pull.rebase true
git config --global init.defaultBranch main
# git config --global credential.helper 'cache --timeout=172800'

cd $HOME/Projects/android
echo "Configuring Repository to pull rebase true"
#git config pull.rebase true
#echo "Configuring Repository to add new url push"
git clone https://github.com/diegodila/android.git --config include.path=../.gitconfig
# git remote remove origin
# git remote add origin https://github.com/diegodila/cloudplatform.git
#git remote set-url --add origin https://gitlab.com/diegodila/android.git
echo "******************************Show Git remotes******************************"
git remote -v
echo

cd $HOME/Projects/cloudplatform
echo "Configuring Repository to pull rebase true"
git config pull.rebase true
echo "Configuring Repository to add new url push"
# git remote remove origin
# git remote add origin https://github.com/diegodila/cloudplatform.git
git remote set-url --add origin https://gitlab.com/diegodila/cloudplatform.git
echo "******************************Show Git remotes******************************"
git remote -v
echo

cd $HOME/Projects/coursera
echo "Configuring Repository to pull rebase true"
git config pull.rebase true
echo "Configuring Repository to add new url push"
# git remote remove origin
# git remote add origin https://github.com/diegodila/coursera.git
git remote set-url --add origin https://gitlab.com/diegodila/coursera.git
echo "******************************Show Git remotes******************************"
git remote -v
echo

cd $HOME/Projects/linuxscriptsdistro
echo "Configuring Repository to pull rebase true"
git config pull.rebase true
echo "Configuring Repository to add new url push"
# git remote remove origin
# git remote add origin https://github.com/diegodila/linuxscriptsdistro.git
git remote set-url --add origin https://gitlab.com/diegodila/linuxscriptsdistro.git
echo "******************************Show Git remotes******************************"
git remote -v
echo 

cd $HOME/Projects/database
echo "Configuring Repository to pull rebase true"
git config pull.rebase true
echo "Configuring Repository to add new url push"
# git remote remove origin
# git remote add origin https://github.com/diegodila/database.git
git remote set-url --add origin https://gitlab.com/diegodila/database.git
echo "******************************Show Git remotes******************************"
git remote -v
echo 

cd $HOME/Projects/datastructure
echo "Configuring Repository to pull rebase true"
git config pull.rebase true
echo "Configuring Repository to add new url push"
# git remote remove origin
# git remote add origin https://github.com/diegodila/datastructure.git
git remote set-url --add origin https://gitlab.com/diegodila/datastructure.git
echo "******************************Show Git remotes******************************"
git remote -v
echo

cd $HOME/Projects/design
echo "Configuring Repository to pull rebase true"
git config pull.rebase true
echo "Configuring Repository to add new url push"
# git remote remove origin
# git remote add origin https://github.com/diegodila/design.git
git remote set-url --add origin https://gitlab.com/diegodila/design.git
echo "******************************Show Git remotes******************************"
git remote -v
echo

cd $HOME/Projects/diegodila
echo "Configuring Repository to pull rebase true"
git config pull.rebase true
echo "Configuring Repository to add new url push"
# git remote remove origin
# git remote add origin https://github.com/diegodila/diegodila.git
git remote set-url --add origin https://gitlab.com/diegodila/diegodila.git
echo "******************************Show Git remotes******************************"
git remote -v
echo

cd $HOME/Projects/fiap
echo "Configuring Repository to pull rebase true"
git config pull.rebase true
echo "Configuring Repository to add new url push"
# git remote remove origin
# git remote add origin https://github.com/diegodila/fiap.git
git remote set-url --add origin https://gitlab.com/diegodila/fiap.git
echo "******************************Show Git remotes******************************"
git remote -v
echo 

cd $HOME/Projects/flutter
echo "Configuring Repository to pull rebase true"
git config pull.rebase true
echo "Configuring Repository to add new url push"
# git remote remove origin
# git remote add origin https://github.com/diegodila/flutter.git
git remote set-url --add origin https://gitlab.com/diegodila/flutter.git
echo "******************************Show Git remotes******************************"
git remote -v
echo

cd $HOME/Projects/git
echo "Configuring Repository to pull rebase true"
git config pull.rebase true
echo "Configuring Repository to add new url push"
# git remote remove origin
# git remote add origin https://github.com/diegodila/git.git
git remote set-url --add origin https://gitlab.com/diegodila/git.git
echo "******************************Show Git remotes******************************"
git remote -v
echo

cd $HOME/Projects/governance
echo "Configuring Repository to pull rebase true"
git config pull.rebase true
echo "Configuring Repository to add new url push"
# git remote remove origin
# git remote add origin https://github.com/diegodila/governance.git
git remote set-url --add origin https://gitlab.com/diegodila/governance.git
echo "******************************Show Git remotes******************************"
git remote -v
echo

cd $HOME/Projects/javaclub
echo "Configuring Repository to pull rebase true"
git config pull.rebase true
echo "Configuring Repository to add new url push"
# git remote remove origin
# git remote add origin https://github.com/diegodila/javaclub.git
git remote set-url --add origin https://gitlab.com/diegodila/javaclub.git
echo "******************************Show Git remotes******************************"
git remote -v
echo

cd $HOME/Projects/kotlin
echo "Configuring Repository to pull rebase true"
git config pull.rebase true
echo "Configuring Repository to add new url push"
# git remote remove origin
# git remote add origin https://github.com/diegodila/kotlin.git
git remote set-url --add origin https://gitlab.com/diegodila/kotlin.git
echo "******************************Show Git remotes******************************"
git remote -v
echo

cd $HOME/Projects/linux
echo "Configuring Repository to pull rebase true"
git config pull.rebase true
echo "Configuring Repository to add new url push"
# git remote remove origin
# git remote add origin https://github.com/diegodila/linux.git
git remote set-url --add origin https://gitlab.com/diegodila/linux.git
echo "******************************Show Git remotes******************************"
git remote -v
echo

cd $HOME/Projects/nodejs
echo "Configuring Repository to pull rebase true"
git config pull.rebase true
echo "Configuring Repository to add new url push"
# git remote remove origin
# git remote add origin https://github.com/diegodila/nodejs.git
git remote set-url --add origin https://gitlab.com/diegodila/nodejs.git
echo "******************************Show Git remotes******************************"
git remote -v
echo

cd $HOME/Projects/pyspark
echo "Configuring Repository to pull rebase true"
git config pull.rebase true
echo "Configuring Repository to add new url push"
# git remote remove origin
# git remote add origin https://github.com/diegodila/pyspark.git
git remote set-url --add origin https://gitlab.com/diegodila/pyspark.git
echo "******************************Show Git remotes******************************"
git remote -v
echo

cd $HOME/Projects/pythonclub
echo "Configuring Repository to pull rebase true"
git config pull.rebase true
echo "Configuring Repository to add new url push"
# git remote remove origin
# git remote add origin https://github.com/diegodila/pythonclub.git
git remote set-url --add origin https://gitlab.com/diegodila/pythonclub.git
echo "******************************Show Git remotes******************************"
git remote -v
echo

cd $HOME/Projects/springboot
echo "Configuring Repository to pull rebase true"
git config pull.rebase true
echo "Configuring Repository to add new url push"
# git remote remove origin
# git remote add origin https://github.com/diegodila/springboot.git
git remote set-url --add origin https://gitlab.com/diegodila/springboot.git
echo "******************************Show Git remotes******************************"
git remote -v
echo

cd $HOME/Projects/webscraping
echo "Configuring Repository to pull rebase true"
git config pull.rebase true
echo "Configuring Repository to add new url push"
# git remote remove origin
# git remote add origin https://github.com/diegodila/webscraping.git
git remote set-url --add origin https://gitlab.com/diegodila/webscraping.git
echo "******************************Show Git remotes******************************"
git remote -v
echo
