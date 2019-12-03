# Installation in CentOS

### 
```
cd /opt
```

### Dependencies
```
yum -y update
yum -y install libstdc++ autoconf automake libtool autoconf-archive pkg-config gcc gcc-c++ make libjpeg-devel libpng-devel libtiff-devel zlib-devel
yum group install -y "Development Tools"
```

### Install Leptonica from Source
```
sudo wget http://www.leptonica.org/source/leptonica-1.78.0.tar.gz
tar -zxvf leptonica-1.78.0.tar.gz
cd leptonica-1.75.3
./configure
make -j
make install
cd ..
```

### Sanity checks
Check if libpng is installed: 
```
$ whereis libpng
```
Check if leptonica is installed: 
```
$ ls /usr/local/include/leptonica
```


### Install Tesseract from Source
```
wget https://github.com/tesseract-ocr/tesseract/archive/4.0.0-beta.1.tar.gz
tar -zxvf 4.0.0-beta.1.tar.gz
cd tesseract-4.0.0-beta.1/
./autogen.sh
PKG_CONFIG_PATH=/usr/local/lib/pkgconfig LIBLEPT_HEADERSDIR=/usr/local/include ./configure --with-extra-includes=/usr/local/include --with-extra-libraries=/usr/local/lib
LDFLAGS="-L/usr/local/lib" CFLAGS="-I/usr/local/include" make -j
make install
ldconfig
cd ..
```


### Check if tesseract is installed
```
$ tesseract -v
```


# Installation in Ubuntu

### 
```
$ sudo apt update
$ sudo apt install tesseract-ocr
```

### Install language
```
$ sudo apt-get install tesseract-ocr-<lang>
```

Additional reference:
- https://github.com/tesseract-ocr/tessdata
