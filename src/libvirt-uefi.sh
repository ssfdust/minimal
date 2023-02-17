#!/bin/sh
install -m644 minimal_linux_live.iso /var/lib/libvirt/images/minimal_linux_live.iso
virt-install --name test \
    --osinfo linux2020 \
    --boot uefi \
    --memory 1024 \
    --nographic \
    --cpu=host \
    --virt-type kvm \
    --cdrom "/var/lib/libvirt/images/minimal_linux_live.iso" \
    --wait

