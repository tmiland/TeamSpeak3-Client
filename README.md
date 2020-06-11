TeamSpeak3-Client
=================

<img src="https://www.teamspeak.com/user/themes/teamspeak/images/brand/InLine_BlueLight.svg" height="137" width="455">

TeamSpeak3 Client package for Debian/Ubuntu

Tested and working on Ubuntu 19.10

Forked from https://github.com/Dh0mp5eur/TeamSpeak3-Client

#### Install on Debian/Ubuntu

### Repository

```shell
$ echo "deb https://deb.tmiland.com/debian stable main" | sudo tee /etc/apt/sources.list.d/tmiland.list
```

```shell
$ sudo apt-key adv --keyserver hkps://keys.openpgp.org --recv-keys A9EA5FFA30697D15
```

```shell
$ sudo apt update
```

```shell
$ sudo apt install teamspeak3-client
```

Make sure you have the "menu" package:

```shell
$ sudo apt-get install menu
```
### Manual install

Installing TeamSpeak on Debian is very tedious, as there are no repositories or even native Deb packages users can download. Instead, if you want an installable TeamSpeak 3 client, you’ll need to build the package yourself. To start the build process, open up a terminal and install the Git tool.

```shell
$ sudo apt-get install git
```

Using git, grab the latest code for the TeamSpeak 3 client package builder:

```shell
$ git clone https://github.com/tmiland/TeamSpeak3-Client.git
```

CD into the newly cloned git folder, and execute the build tool to generate a new package.

```shell
$ cd TeamSpeak3-Client
```

```shell
$ ./package.sh
```

Package.sh will build a DEB package according to your Architecture Type.

Use the dpkg command in terminal:

```shell
sudo dpkg -i teamspeak3-client_amd64.deb
```

or

```shell
sudo dpkg -i teamspeak3-client_i386.deb
```

Uninstall the TeamSpeak 3 client from Debian with:

```shell
sudo apt-get remove teamspeak3-client
```

If you're having dependency issues, run:

```shell
sudo aptitude install libc++1 libc++abi1 libqt5sql5 libqt5sql5-sqlite libsrtp0
```

Alternatively download deb packages here: https://github.com/tmiland/TeamSpeak3-Client/releases

Install instructions from: https://www.addictivetips.com/ubuntu-linux-tips/install-the-teamspeak-client-on-linux/

Package can be upgrade by a simple command 

```shell
grep -rl '3.3.2' * | xargs sed -i 's/3.3.2/3.5.3/g'
```
