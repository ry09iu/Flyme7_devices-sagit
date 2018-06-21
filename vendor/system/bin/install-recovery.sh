#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:22914382:1b963964f3788986ab3c1ab9e79459f92d6f3de6; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:20694346:03bb3b3e88ad85f6a7b8302d1804f3094968a337 EMMC:/dev/block/bootdevice/by-name/recovery 1b963964f3788986ab3c1ab9e79459f92d6f3de6 22914382 03bb3b3e88ad85f6a7b8302d1804f3094968a337:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
