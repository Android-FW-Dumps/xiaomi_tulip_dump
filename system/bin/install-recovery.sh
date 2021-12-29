#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:32621902:94f9386f9eda92fed41669c78288a8d40f44a59e; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:26461514:14413d159f358420a94c947cd168cb17da787431 EMMC:/dev/block/bootdevice/by-name/recovery 94f9386f9eda92fed41669c78288a8d40f44a59e 32621902 14413d159f358420a94c947cd168cb17da787431:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
