# Installation
Note: Tested in Ubuntu 16.04

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
Add the Docker repository to APT sources:
```
$ sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
```
Update from the newly added repo
```
$ sudo apt-get update
```
Verify
```
$ apt-cache policy docker-ce
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


# Docker Compose
For the latest version check [here](https://github.com/docker/compose/releases)
```
$ sudo curl -L https://github.com/docker/compose/releases/download/1.25.3/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
```
Apply permission
```
$ sudo chmod +x /usr/local/bin/docker-compose
```
Test
```
$ docker-compose --version
```


Reference:
- https://docs.docker.com/install/linux/docker-ce/ubuntu/
- https://www.digitalocean.com/community/tutorials/how-to-install-and-use-docker-on-ubuntu-16-04
