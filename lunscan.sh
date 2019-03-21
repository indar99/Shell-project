#!/bin/bash

for i in /sys/class/scsi_host/host?;do echo "scanning lun $i "; echo "- - -" >$i/scan ;done

df -hP | grep -Ev "Filesystem|tmpfs" | awk '{print  $6 " " $5 }'
