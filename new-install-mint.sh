#!/bin/bash

# Basic Linux Mint Install Script customized
# Install utilities first
cd ~

sudo apt-get update -qq

# Add git

sudo apt-get install git htop bleachbit meld conky fslint handbrake hardinfo \
wireshark dconf-editor dconf-cli dropbox geary -yy

# Downloading and installing latest sublime text 3

rm /tmp/sublime-text_build-3126_amd64.deb

wget https://download.sublimetext.com/sublime-text_build-3126_amd64.deb -O /tmp/sublime-text_build-3126_amd64.deb
sudo dpkg -i /tmp/sublime-text_build-3126_amd64.deb

rm /tmp/sublime-text_build-3126_amd64.deb

# Download and install Google Chrome

rm /tmp/google-chrome-stable_current_amd64.deb

echo "downloading google chrome latest stable edition"
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb -O /tmp/google-chrome-stable_current_amd64.deb
sudo dpkg -i /tmp/google-chrome-stable_current_amd64.deb

rm /tmp/google-chrome-stable_current_amd64.deb


# repo for grub-customizer
sudo add-apt-repository ppa:danielrichter2007/grub-customizer -y
# getting new info of this new repo
sudo apt-get -y update
# installing
sudo apt-get install -y grub-customizer

# Spotify

# 1. Add the Spotify repository signing key to be able to verify downloaded packages
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys BBEBDCB318AD50EC6865090613B00F1FD2C19886

# 2. Add the Spotify repository
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list

# 3. Update list of available packages
sudo apt-get update

# 4. Install Spotify
sudo apt-get install spotify-client -y

# Add all previous Mint Backgrounds

sudo apt-get install mint-backgrounds-* -y

# Theming

rm -rf /tmp/Surfn
git clone https://github.com/erikdubois/Surfn /tmp/Surfn
find /tmp/Surfn -maxdepth 1 -type f -exec rm -rf '{}' \;

# if there is no hidden folder then make one
[ -d $HOME"/.icons" ] || mkdir -p $HOME"/.icons"

cp -rf /tmp/Surfn/* ~/.icons/
rm -rf /tmp/Surfn

# if there is no hidden folder then make one
[ -d $HOME"/.themes" ] || mkdir -p $HOME"/.themes"


rm -rf /tmp/Arc-Theme-Colora-Collection
git clone https://github.com/erikdubois/Arc-Theme-Colora-Collection /tmp/Arc-Theme-Colora-Collection
find /tmp/Arc-Theme-Colora-Collection -maxdepth 1 -type f -exec rm -rf '{}' \;
cp -r /tmp/Arc-Theme-Colora-Collection/Cinnamon\ 3.0/* ~/.themes/
rm -rf /tmp/Arc-Theme-Colora-Collection

[ -d $HOME"/.themes" ] || mkdir -p $HOME"/.themes"

rm -rf /tmp/Mint-Y-Colora-Theme-Collection
git clone https://github.com/erikdubois/Mint-Y-Colora-Theme-Collection /tmp/Mint-Y-Colora-Theme-Collection
find /tmp/Mint-Y-Colora-Theme-Collection -maxdepth 1 -type f -exec rm -rf '{}' \;
cp -r /tmp/Mint-Y-Colora-Theme-Collection/Cinnamon\ 3.0/* ~/.themes/
rm -rf /tmp/Mint-Y-Colora-Theme-Collection

rm -rf /tmp/sardi
wget -O /tmp/sardi.tar.gz "https://sourceforge.net/projects/sardi/files/latest/download?source=files"
mkdir /tmp/sardi
tar -zxf /tmp/sardi.tar.gz -C /tmp/sardi
rm /tmp/sardi.tar.gz

# if there is no hidden folder then make one
[ -d $HOME"/.icons" ] || mkdir -p $HOME"/.icons"

cp -rf /tmp/sardi/* ~/.icons/
rm -rf /tmp/sardi

rm -rf /tmp/Sardi-Vintage
git clone https://github.com/erikdubois/Sardi-Vintage /tmp/Sardi-Vintage
find /tmp/Sardi-Vintage -maxdepth 1 -type f -exec rm -rf '{}' \;

# if there is no hidden folder then make one
[ -d $HOME"/.icons" ] || mkdir -p $HOME"/.icons"

cp -r /tmp/Sardi-Vintage/* ~/.icons/
rm -rf /tmp/Sardi-Vintage

rm -rf /tmp/Sardi-Extra
git clone https://github.com/erikdubois/Sardi-Extra /tmp/Sardi-Extra
find /tmp/Sardi-Extra -maxdepth 1 -type f -exec rm -rf '{}' \;

# if there is no hidden folder then make one
[ -d $HOME"/.icons" ] || mkdir -p $HOME"/.icons"

cp -r /tmp/Sardi-Extra/* ~/.icons/
rm -rf /tmp/Sardi-Extra

rm -rf /tmp/arc-theme

sudo apt-get install build-essential autoconf automake pkg-config libgtk-3.0 libgtk-3-dev -y
git clone https://github.com/horst3180/arc-theme --depth 1 /tmp/arc-theme
cd /tmp/arc-theme
sh autogen.sh --prefix=/usr
sudo make install

rm -rf /tmp/arc-theme

rm -rf /tmp/vertex-theme

sudo rm -rf /usr/share/themes/{Vertex,Vertex-Dark,Vertex-Light,Vertex-Gnome-Shell,Vertex-Gnome-Shell-3.16,Vertex-Cinnamon}
rm -rf ~/.local/share/themes/{Vertex,Vertex-Dark,Vertex-Light,Vertex-Gnome-Shell,Vertex-Gnome-Shell-3.16,Vertex-Cinnamon}
rm -rf ~/.themes/{Vertex,Vertex-Dark,Vertex-Light,Vertex-Gnome-Shell,Vertex-Gnome-Shell-3.16,Vertex-Cinnamon}

sudo apt-get install -y autoconf automake pkg-config libgtk-3-dev git

git clone https://github.com/horst3180/vertex-theme --depth 1  /tmp/vertex-theme
cd /tmp/vertex-theme
./autogen.sh --prefix=/usr
sudo make install

rm -rf /tmp/vertex-theme

