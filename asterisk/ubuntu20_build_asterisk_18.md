# Building Asterisk 18 on Ubuntu 20

Create a machine using **multipass**:

```
multipass launch -c 1 -d 4G -m 512M -n asterisk18
```

Shell into the machine and enter as root:

```
multipass shell asterisk18

sudo -i
```

Update the system:

```
apt-get update
apt-get upgrade
```

Install the dependencies:

```
apt-get install build-essential wget
```

Download Asterisk and extract it:

```
wget https://downloads.asterisk.org/pub/telephony/asterisk/asterisk-18.1.1.tar.gz
tar xf asterisk-18.1.1.tar.gz

cd asterisk-18.1.1/
```

Run required scripts before configuration:

```
./contrib/scripts/get_mp3_source.sh
./contrib/scripts/install_prereq install
```

Configure:

```
./configure
```

Explore the Menuselect:

```
make menuselect
```

Make and install:

```
make
make install
```

Install samples (optional):

```
make samples
```

Other needed commands:

```
make config
ldconfig
```

Create a user and the user to other groups:

```
adduser --system --group --home /var/lib/asterisk --no-create-home --gecos "Asterisk PBX" asterisk

usermod -a -G dialout,audio asterisk

chown -R asterisk: /var/{lib,log,run,spool}/asterisk /usr/lib/asterisk /etc/asterisk
chmod -R 750 /var/{lib,log,run,spool}/asterisk /usr/lib/asterisk /etc/asterisk
```

Uncomment **AST_USER** and **AST_GROUP** variables in the `/etc/default/asterisk` file.
