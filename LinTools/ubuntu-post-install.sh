#!/bin/bash
echo "Begin Setup?"
select yn in "Yes" "No"; do
    case $yn in
        Yes ) break;;
        No ) exit;;
    esac
done
cd ~
sudo apt update;sudo apt upgrade -y
sudo add-apt-repository main -y
sudo add-apt-repository universe -y
sudo add-apt-repository restricted -y
sudo add-apt-repository multiverse -y

sudo apt update

echo "Install Base Components?"
select yn in "Yes" "No"; do
    case $yn in
        Yes ) sudo apt install vlc synaptic nemo flatpak gnome-software-plugin-flatpak gnome-system-log gparted gnome-usage gnome-firmware snap snapd git curl lame flac alac-decoder zsh mtools cifs-utils hfsplus hfsprogs exfatprogs samba samba-client samba-common exfat-fuse btrfs-progs udftools vsftpd f2fs-tools xfsprogs jfsutils lvm2 nilfs-tools mhddfs reiser4progs reiserfsprogs hfsutils openssh-server -y && sudo snap install code --classic && cd ~/Downloads && wget https://cdn.azul.com/zulu/bin/zulu17.42.19-ca-fx-jdk17.0.7-linux_amd64.deb && wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb && cd ~ && read -p "COMPLETED *press enter to proceed*" && break;;
        No ) break;;
    esac
done

sudo apt update

echo "Install Client Extensions?"
select yn in "Yes" "No"; do
    case $yn in
        Yes ) sudo apt install gnome-tweaks gnome-shell-extensions ubuntu-restricted-extras krita steam libreoffice gnome-weather gnome-sound-recorder wine-stable gimp audacity -y && sudo snap install discord && flatpak install flathub com.mattjakeman.ExtensionManager -y && cd ~/Downloads && cd ~ && sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo && read -p "COMPLETED *press enter to proceed*" && break;;
        No ) break;;
    esac
done

sudo apt update

cd ~/Downloads

sudo dpkg -i *.deb
sudo apt install -f -y
rm *.deb
rm download?platform=linux

cd ~

sudo apt update

sudo apt remove --purge openjdk-11-jre openjdk-11-jre-headless -y
sudo snap remove --purge firefox
sudo apt --purge autoremove -y

sudo apt update;sudo apt upgrade -y

read -p "COMPLETED *press enter to proceed*"

echo "Reboot?"
select yn in "Yes" "No"; do
    case $yn in
        Yes ) reboot;;
        No ) exit;;
    esac
done