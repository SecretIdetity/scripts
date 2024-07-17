sudo pacman -Qdtq | sudo pacman -Rsn --noconfirm -
sudo pacman -Syyu --noconfirm
sudo pacman -Sc --noconfirm
sudo journalctl --vacuum-size=256M
