# Install Ubuntu Tweak in Ubuntu

From the [package](https://launchpad.net/~trebelnik-stefina/+archive/ubuntu/ubuntu-tweak/+packages) site, download the latest `.deb` file
```
$ cd /tmp
$ wget https://launchpad.net/~trebelnik-stefina/+archive/ubuntu/ubuntu-tweak/+files/ubuntu-tweak_0.8.8-5~zesty_all.deb
```

Then install the package via dpkg
```
$ sudo dpkg -i ubuntu-tweak_0.8.8-5~zesty_all.deb; sudo apt -f install
```
