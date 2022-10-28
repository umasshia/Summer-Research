virt-install \
 -n VM1 \
 --description "VM1" \
 --os-type=Linux \
 --os-variant=ubuntu20.04 \
 --ram=4096 \
 --vcpus=2 \
 --disk size=50\
 --disk path=/var/lib/libvirt/images/VM1.img,bus=virtio,size=10 \
 --graphics none \
 --location /var/ubuntu-20.04.4-desktop-amd64.iso \
 --network bridge:virbr0 \
 --extra-args console=ttyS0