TeamSpeak3-Client
=================

TeamSpeak3 Client package for Debian

Forked from https://github.com/Dh0mp5eur/TeamSpeak3-Client

Install on Debian/Ubuntu

Make sure you have the "menu" package:

sudo apt-get install menu

Installing TeamSpeak on Debian is very tedious, as there are no repositories or even native Deb packages users can download. Instead, if you want an installable TeamSpeak 3 client, you’ll need to build the package yourself. To start the build process, open up a terminal and install the Git tool.

sudo apt-get install git

Using git, grab the latest code for the TeamSpeak 3 client package builder:

git clone https://github.com/tmiland/TeamSpeak3-Client.git

CD into the newly cloned git folder, and execute the build tool to generate a new package.

cd TeamSpeak3-Client

sh package.sh

Package.sh will build both a 64bit and 32bit DEB packages.

Use the dpkg command in terminal:

sudo dpkg -i teamspeak3-client_amd64.deb

or

sudo dpkg -i teamspeak3-client_i386.deb

Each time a new version of the TeamSpeak 3 client is released, you may need to re-run this build process.

Uninstall the TeamSpeak 3 client from Debian with:

sudo apt-get remove teamspeak3-client

Instructions from https://www.addictivetips.com/ubuntu-linux-tips/install-the-teamspeak-client-on-linux/
