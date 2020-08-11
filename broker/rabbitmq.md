# Install RabbitMQ in Ubuntu 18.04 LTS

## Install Erlang
Follow [this](/prog-lang/erlang.md) 


## Add RabbitMQ Repository
```
$ wget -O- https://dl.bintray.com/rabbitmq/Keys/rabbitmq-release-signing-key.asc | sudo apt-key add -
$ wget -O- https://www.rabbitmq.com/rabbitmq-release-signing-key.asc | sudo apt-key add -

$ echo "deb https://dl.bintray.com/rabbitmq/debian $(lsb_release -sc) main" | sudo tee /etc/apt/sources.list.d/rabbitmq.list
```

## Install RabbitMQ Server Ubuntu 
```
sudo apt update
sudo apt -y install rabbitmq-server
```

## Set to start on boot:
```
$ sudo systemctl enable rabbitmq-server
```

## Check status
```
$ sudo systemctl status rabbitmq-server
```

## Enable the RabbitMQ Management Dashboard
```
$ sudo rabbitmq-plugins enable rabbitmq_management
```

## Add user to RabbitMQ Management Dashboard, set as `administrator` role and set permission
```
$ sudo rabbitmqctl add_user <user> <strong_password>
$ sudo rabbitmqctl set_user_tags <user> administrator
$ sudo rabbitmqctl set_permissions -p / <user> ".*" ".*" ".*"
```


# Install RabbitMQ in Ubuntu 20.04 LTS

Note: Installation is similar to installation of Ubuntu 18.04

## Install Erlang
Follow [this](/prog-lang/erlang.md) 

## Add RabbitMQ Repository
```
$ wget -O- https://dl.bintray.com/rabbitmq/Keys/rabbitmq-release-signing-key.asc | sudo apt-key add -
$ wget -O- https://www.rabbitmq.com/rabbitmq-release-signing-key.asc | sudo apt-key add -

$ echo "deb https://dl.bintray.com/rabbitmq/debian focal main" | sudo tee /etc/apt/sources.list.d/rabbitmq.list
```

## Install RabbitMQ Server Ubuntu 
```
sudo apt update
sudo apt -y install rabbitmq-server
```

## Set to start on boot:
```
$ sudo systemctl enable rabbitmq-server
```

## Check status
```
$ sudo systemctl status rabbitmq-server
```

## Enable the RabbitMQ Management Dashboard
```
$ sudo rabbitmq-plugins enable rabbitmq_management
```

## Add user to RabbitMQ Management Dashboard, set as `administrator` role and set permission
```
$ sudo rabbitmqctl add_user <user> <strong_password>
$ sudo rabbitmqctl set_user_tags <user> administrator
$ sudo rabbitmqctl set_permissions -p / <user> ".*" ".*" ".*"
```

Reference:
- https://computingforgeeks.com/how-to-install-latest-rabbitmq-server-on-ubuntu-18-04-lts/
