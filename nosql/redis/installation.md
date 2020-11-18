# Installation in Ubuntu 16.04
## Short version
```
$ sudo apt-get install redis-server -y
```

## Long version
Update
```
$ sudo apt-get update
```
Install pre-requisite packages
```
$ sudo apt-get install build-essential tcl
```

Download latest version of redis
```
$ cd /tmp
$ curl -O http://download.redis.io/redis-stable.tar.gz
```
Unpack 
```
$ tar xzvf redis-stable.tar.gz
```
Compile
```
$ cd redis-stable
$ make
```
Check if properly compile
```
$ make test
```
Install to system
```
$ sudo make install
```

Create a config directory and copy the sample Redis config
```
$ sudo mkdir /etc/redis
$ sudo cp /tmp/redis-stable/redis.conf /etc/redis
```

Adjust the configuration
```
$ sudo nano /etc/redis/redis.conf
```
change `supervised` current value is 
```
supervised no
```
change to
```
supervised systemd
```


change `dir` current value is 
```
dir ./
``` 
change to 
```
dir /var/lib/redis
```
