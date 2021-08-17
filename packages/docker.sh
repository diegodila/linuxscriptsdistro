yay 
echo "****************Installing Docker****************"
yay -S docker docker-compose docker-openrc
sudo rc-update add docker default
sudo rc-service docker start
# yay -S docker-runit
# sudo ln -s /etc/runit/sv/docker /run/runit/service
echo "****************Sv runit start Docker****************"
# sudo sv up docker
echo "****************Docker version****************"
sudo docker version
echo "****************Docker info****************"
sudo docker info
echo "****************Docker usermod add****************"
sudo usermod -aG docker $USER