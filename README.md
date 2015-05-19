# ZenFone-vold
Patch and binary of vold for ZenFone 2 supporting NTFS mounting

# Patch & build
* cd /source/to/aosp/system/vold
* patch -p0 < patch
* cd ../..
* source build/envsetup.sh
* lunch 
* mm vold

# Install
* adb push assets/vold /data/local/tmp
* adb shell
* mount -o rw,remount /system
* cd /system/bin
* mv vold vold.orig
* cp /data/local/tmp/vold .
* chmod 755 vold; chown root:shell vold; chcon u:object_r:vold_exec:s0 vold
* reboot

