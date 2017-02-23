Useful if a disk fails, or if a RAID1 array needs to be reduced to one disk etc:  
`sudo btrfs balance start -f -mconvert=single -dconvert=single /mountpoint`  
