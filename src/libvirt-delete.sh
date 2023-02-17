#!/bin/sh
virsh destroy test
virsh undefine test --nvram --remove-all-storage
