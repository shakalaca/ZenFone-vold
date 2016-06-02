#!/bin/sh

adb push assets/vold /data/local/tmp/vold
adb push assets/libext2_blkid.so /data/local/tmp/libext2_blkid.so
adb push assets/installer /data/local/tmp/installer
adb shell "su -c chmod 755 /data/local/tmp/installer"
adb shell "su -c /data/local/tmp/installer"
adb reboot

