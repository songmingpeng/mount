# NFS /etc/exports
vi /etc/exports
   /data *(rw)
# unbuntu install NFS
1 su 
2 apt-get install nfs-kernel-server
3 service restartnfs-kernel-server restart

# mount disk
#!/bin/bash

# /etc/exports
# /data6 *(rw)

# service rpcbind restart
# service nfs     restart

for i in `cat node.list`
do

echo +++++++++++++++++++++ ${i} ++++++++++++++++++++
ssh -X ${i} uname
ssh -X ${i} mkdir /udisk
ssh -X ${i} mount -t nfs unode101:/data /udisk
$ssh -X ${i} "ls /udisk"
done