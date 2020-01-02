# Installation of Golang

#### Download 
Go [here](https://golang.org/dl/) for the latest archive.
```
$ cd /tmp
```
```
$ curl -O https://dl.google.com/go/go1.13.5.linux-amd64.tar.gz
```

#### Verify using `sha256sum`
```
$ sha256sum go1.13.5.linux-amd64.tar.gz
```

#### Extract the tarball to `/usr/local`
```
$ sudo tar -C /usr/local -xzf 
```

#### Edit `~/.profile` to add the PATH
```
export PATH=$PATH:/usr/local/go/bin
```

### Activate profile and check the version
```
go version
```
