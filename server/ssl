# Setup SSL on Ubuntu
Note: This is assuming vhost are setup

```bash
$ sudo add-apt-repository ppa:certbot/certbot
$ sudo apt-get update
$ sudo apt-get install python-certbot-nginx
$ sudo certbot --nginx -d <domain>
```

Auto-renewal Setup
```bash
15 3 * * * /usr/bin/certbot renew >> /tmp/cert-renew.log
```
