# Upgrade postgresql from 9.5 to 11 on Ubuntu 16.10
1. Create a backup
```
$ pg_dumpall > <backup_output_file>
```
2. Install Postgres 11
```
$ wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -
$ sudo apt-get update
$ sudo apt-get install postgresql-11
```
Run pg_lsclusters
```
$ pg_lsclusters
```
Upon running of `pg_lsclusters` there will be a cluster `main` for postgres 11
![alt text](https://github.com/krectra/devops/blob/master/postgres_cluster.PNG)

Stop the 11 cluster
```
$ sudo pg_dropcluster 11 main --stop
```
Make sure to stop all processes and services
```
$ sudo systemctl stop postgresql 
```
Upgrade the 9.5 cluster
```
$ sudo pg_upgradecluster -m upgrade 9.5 main
```
Start postgresql
```
$ sudo systemctl start postgresql
```
Check data before removing the old version.
If it's all good, then do a
```
$ sudo pg_dropcluster 9.5 main --stop
```


Reference:
- https://www.postgresql.org/download/linux/ubuntu/
- https://stackoverflow.com/questions/46687645/upgrade-postgresql-from-9-6-to-10-0-on-ubuntu-16-10
