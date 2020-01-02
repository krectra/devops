# Installation of Golang

#### Download 
Go [here](https://golang.org/dl/) for the latest archive.
Lets assume that the latest version is `1.13.5` and we'll be using this `go1.13.5.linux-amd64.tar.gz`
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
$ sudo tar -C /usr/local -xzf go1.13.5.linux-amd64.tar.gz
```

#### Edit `~/.profile` to add the PATH
```
export PATH=$PATH:/usr/local/go/bin
```

### Activate profile and check the version
```
go version
```
