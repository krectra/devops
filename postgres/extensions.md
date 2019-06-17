# Installing Postgis 2.5
1. Installation
```
$ sudo apt install postgresql-11-postgis-2.5
$ sudo apt install postgresql-11-pgrouting
```

2. Upon creation of database, create postgis schema
```
postgisdb=# CREATE SCHEMA postgis;
ALTER DATABASE postgisdb SET search_path=public, postgis, contrib;
```

3. Enable the `Postgis` extension
```
postgisdb=# CREATE EXTENSION postgis SCHEMA postgis;
```

4. To verify version
```
postgisdb=#SELECT postgis_full_version();
```
