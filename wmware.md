# VMware

## Shared Folder[Window 10-Ubuntu 16.04]
### VMWare Workstation
On Host:

VM > Install VMWare Tools

On Guest:

extract VMwareTools.x.x.x-xxxx.tar.gz to tmp
```bash
$ tar -xvf /media/$USER/"VMware Tools"/VMwareTools*.gz -C /tmp
```
```bash
cd /tmp
```
Install
```bash
sudo vmware-tools-distrib/vmware-install.pl -d
```

Check Shared folder is enabled by:
```bash
ls /mnt/hgfs/<Shared Folder>
```
