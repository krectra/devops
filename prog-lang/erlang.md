## Import Erlang GPG Key
```
wget -O- https://packages.erlang-solutions.com/ubuntu/erlang_solutions.asc | sudo apt-key add -
```

## Add the Erlang Repository
```
echo "deb https://packages.erlang-solutions.com/ubuntu bionic contrib" | sudo tee /etc/apt/sources.list.d/rabbitmq.list
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
