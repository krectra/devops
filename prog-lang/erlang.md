Note: tested in 18.04 LTS


## Import Erlang GPG Key
```
wget -O- https://packages.erlang-solutions.com/ubuntu/erlang_solutions.asc | sudo apt-key add -
```

## Add the Erlang Repository
Check your version first in [Distributtion List](https://github.com/krectra/devops#ubuntu) and change `<version>` to your distribution list
```
echo "deb https://packages.erlang-solutions.com/ubuntu <version> contrib" | sudo tee /etc/apt/sources.list.d/rabbitmq.list
```
Example:
```
echo "deb https://packages.erlang-solutions.com/ubuntu <version> contrib" | sudo tee /etc/apt/sources.list.d/rabbitmq.list
```


## Install Erlang
```
sudo apt update
sudo apt -y install erlang
```


## Create a `hello.erl` file and compile it from the Erlang shell
```
-module(hello).
-export([hello_world/0]).

hello_world() -> io:fwrite("hello, world\n").
```

```
$ erl


1> c(hello).
{ok,hello}
```


Reference:
- https://computingforgeeks.com/how-to-install-latest-erlang-on-ubuntu-18-04-lts/
