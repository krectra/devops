#!/usr/bin/env bash
if [[ $EUID -ne 0 ]]; then
    echo "This script must be run as root" 1>&2
    exit 1
fi

PHANTOM_VERSION="phantomjs-2.1.1"
ARCH=$(uname -m)

if ! [ $ARCH = "x86_64" ]; then
    $ARCH="i686"
fi

PHANTOM_JS="$PHANTOM_VERSION-linux-$ARCH"

apt-get update
apt-get -y install build-essential chrpath libssl-dev libxft-dev libfreetype6 libfreetype6-dev libfontconfig1 libfontconfig1-dev

cd /tmp/
wget -q https://bitbucket.org/ariya/phantomjs/downloads/$PHANTOM_JS.tar.bz2 -O $PHANTOM_JS.tar.bz2
tar xvjf $PHANTOM_JS.tar.bz2

if [ -d /usr/local/share/$PHANTOM_JS ] ; then
  rm -rf /usr/local/share/$PHANTOM_JS
fi
mv -f $PHANTOM_JS /usr/local/share/
ln -sf /usr/local/share/$PHANTOM_JS/bin/phantomjs /usr/local/share/phantomjs
ln -sf /usr/local/share/$PHANTOM_JS/bin/phantomjs /usr/local/bin/phantomjs
ln -sf /usr/local/share/$PHANTOM_JS/bin/phantomjs /usr/bin/phantomjs
echo "Installed PhantomJS version:" && phantomjs --version

cd /usr/local/share
sudo git clone -b master git://github.com/n1k0/casperjs.git
cd casperjs
sudo ln -sf `pwd`/bin/casperjs /usr/local/bin/casperjs
echo "Installed CasperJS version:" && casperjs --version
