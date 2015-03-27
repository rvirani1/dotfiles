#!/bin/sh
set -euv

echo 'debconf debconf/frontend select Noninteractive' | sudo debconf-set-selections
sudo apt-get update -qq -y

# Install git from ppa
sudo add-apt-repository ppa:git-core/ppa
sudo apt-get update
sudo apt-get install git

# Install Dev Basics
sudo apt-get -qq -y install mysql-server-5.6
sudo apt-get -qq -y install redis-server
sudo apt-get -qq -y install libmysqlclient-dev
sudo apt-get -qq -y install vim
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
sudo apt-get -qq -y install lftp
sudo apt-get -qq -y install build-essential

# Install node from ppa
curl -sL https://deb.nodesource.com/setup | sudo bash -
sudo apt-get install nodejs

# Install Google Chrome from PPA
cd ~/Downloads
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
sudo apt-get -f install

# Install system basics
sudo apt-get -qq -y install tree htop
sudo apt-get -qq -y install openssl libssl-dev
sudo apt-get -qq -y install i3 screen
sudo apt-get -qq -y install gnome-tweak-tool
sudo apt-get -qq -y install qemu-utils
sudo apt-get -qq -y install wine

# Install common native gem build requirements
sudo apt-get -qq -y install libreadline6-dev libyaml-dev libsqlite3-dev sqlite3
sudo apt-get -qq -y install autoconf libgdbm-dev libncurses5-dev automake libtool
sudo apt-get -qq -y install bison pkg-config libffi-dev
sudo apt-get -qq -y install libxslt-dev libxml2-dev

# Install RVM
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
\curl -sSL https://get.rvm.io | bash -s stable --ruby

# Install phantomjs as required by Emcien Mix
sudo apt-get -qq -y install phantomjs
sudo apt-get -qq -y install imagemagick libmagickwand-dev

# Install libsodium
cd ~
sudo mkdir libsodium
cd libsodium
sudo wget https://s3.amazonaws.com/emcien-system/assets/libsodium-1.0.2.tar.gz
sudo tar -xvf libsodium-1.0.2.tar.gz
cd libsodium-1.0.2
sudo ./configure
sudo make && sudo make check
sudo make install
sudo ldconfig

# Install VirtualBox
sudo sh -c "echo 'deb http://download.virtualbox.org/virtualbox/debian '$(lsb_release -cs)' contrib non-free' > /etc/apt/sources.list.d/virtualbox.list" 
wget -q http://download.virtualbox.org/virtualbox/debian/oracle_vbox.asc -O- | sudo apt-key add - 
sudo apt-get -qq -y update 
sudo apt-get -qq -y install virtualbox-4.3 dkms

# Install DiffMerge
sudo touch /etc/apt/sources.list.d/sourcegear.list
echo 'deb http://debian.sourcegear.com/ubuntu raring main' | sudo tee '/etc/apt/sources.list.d/sourcegear.list'
sudo wget -O - http://debian.sourcegear.com/SOURCEGEAR-GPG-KEY | sudo apt-key add -
sudo apt-get update
sudo apt-get install diffmerge
