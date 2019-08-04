# Installation

Update the apt index
```
$ sudo apt-get update
```

Pre-requisite to allow https
```
$ sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common
```

Add GPG key for the official Docker repository 
```
$ curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
```

Verify
```
$ sudo apt-key fingerprint 0EBFCD88
```
check for `9DC8 5822 9FC7 DD38 854A E2D8 8D81 803C 0EBF CD88`

Update from the newly added repo
```
$ sudo apt-get update
```


Install
```
$ sudo apt-get install -y docker-ce
```

Check if running
```
$ sudo systemctl status docker
```


# Running docker without sudo
Add current user to the `docker` group
```
$ sudo usermod -aG docker ${USER}
```

Apply the changes via and input password
```
$ su - ${USER}
```

Confirm that current user is added to the `docker` group
```
$ id -nG
```

Now you can run docker with sudo
```
$ docker
```


Reference:
- https://docs.docker.com/install/linux/docker-ce/ubuntu/
- https://www.digitalocean.com/community/tutorials/how-to-install-and-use-docker-on-ubuntu-16-04
