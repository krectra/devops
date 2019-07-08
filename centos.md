# Installing Gnome GUI on CentOS

Update system
```
$ sudo yum update
```

Next would be a long process.

- Installing Gnome package
```
$ sudo yum -y groups install "GNOME Desktop"
```

Setting Gnome as the default Desktop Environment
```
$ echo "exec gnome-session" >> ~/.xinitrc
```

Do test it via
```
$ startx
```

After testing it and it boots properly, set it now to start automatically
```
$ systemctl set-default graphical.target
```
