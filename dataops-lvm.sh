yum install lvm2 -y

# lvm 操作
diskList=$(lsblk | grep 3.5T | awk '{print "/dev/"$1}' | awk '{printf "%s ", $1}')
pvcreate $diskList
vgcreate vg-dataops $diskList
lvcreate -n lv-dataops -l +100%FREE vg-dataops
mkfs.xfs /dev/vg-dataops/lv-dataops

mkdir /data

mount /dev/vg-dataops/lv-dataops /data

uuid=$(lsblk -o NAME,UUID | grep vg--dataops-lv--dataops | awk 'NR==1 {print $2}')

echo "UUID=$uuid /data                   xfs     defaults        0 0" >> /etc/fstab
systemctl daemon-reload
mount -a

xfs_growfs /data

lsblk -o NAME,UUID,MAJ:MIN,RM,SIZE,RO,TYPE,MOUNTPOINTS

cat /etc/fstab
