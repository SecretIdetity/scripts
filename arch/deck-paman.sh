sudo steamos-readonly disable
sudo pacman -S base-devel
echo "set SigLevel = TrustAll in /etc/pacman.conf"
sudo pacman-key --init
sudo pacman-key --populate archlinux
sudo pacman -S holo-keyring archlinux-keyring fakeroot
echo "git clone, makepkg, sudo pacman -U pakige_name "
