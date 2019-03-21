#!/bin/bash

for i in /sys/class/scsi_host/host?;do echo "scanning lun $i "; echo "- - -" >$i/scan ;done
