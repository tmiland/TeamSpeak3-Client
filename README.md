TeamSpeak3-Client
=================

<img src="https://www.teamspeak.com/user/themes/teamspeak/images/brand/InLine_BlueLight.svg" height="137" width="455">

TeamSpeak3 Client package for Debian/Ubuntu

Tested and working on Ubuntu 18.10

Forked from https://github.com/Dh0mp5eur/TeamSpeak3-Client

Install on Debian/Ubuntu

Make sure you have the "menu" package:

```
sudo apt-get install menu
```

Installing TeamSpeak on Debian is very tedious, as there are no repositories or even native Deb packages users can download. Instead, if you want an installable TeamSpeak 3 client, you’ll need to build the package yourself. To start the build process, open up a terminal and install the Git tool.

```
sudo apt-get install git
```

Using git, grab the latest code for the TeamSpeak 3 client package builder:

```
git clone https://github.com/tmiland/TeamSpeak3-Client.git
```

CD into the newly cloned git folder, and execute the build tool to generate a new package.

```
cd TeamSpeak3-Client
```

```
sh package.sh
```

Package.sh will build a DEB package according to your Architecture Type.

Use the dpkg command in terminal:

```
sudo dpkg -i teamspeak3-client_amd64.deb
```

or

```
sudo dpkg -i teamspeak3-client_i386.deb
```

Uninstall the TeamSpeak 3 client from Debian with:

```
sudo apt-get remove teamspeak3-client
```

If you're having dependency issues, run:

```
sudo aptitude install libc++1 libc++abi1 libqt5sql5 libqt5sql5-sqlite libsrtp0
```

Alternatively download deb packages here: https://github.com/tmiland/TeamSpeak3-Client/releases

Install instructions from: https://www.addictivetips.com/ubuntu-linux-tips/install-the-teamspeak-client-on-linux/
