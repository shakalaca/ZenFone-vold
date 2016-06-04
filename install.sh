#!/bin/sh

adb push assets/bin/vold /data/local/tmp/vold
adb push assets/bin/supolicy /data/local/tmp/supolicy
adb push assets/bin/mkntfs /data/local/tmp/mkntfs
adb push assets/bin/ntfsfix /data/local/tmp/ntfsfix
adb push assets/bin/ntfs-3g /data/local/tmp/ntfs-3g
adb push assets/lib64/libext2_blkid.so /data/local/tmp/libext2_blkid.so
adb push assets/installer /data/local/tmp/installer
adb shell "su -c chmod 755 /data/local/tmp/installer"
adb shell "su -c /data/local/tmp/installer"
adb reboot

