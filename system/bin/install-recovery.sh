#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/mtk-msdc.0/11230000.MSDC0/by-name/recovery:11069696:c6b51263859aadb26de71a4bf52cd29f9cf003ee; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/mtk-msdc.0/11230000.MSDC0/by-name/boot:7665920:74cbbad833e1975409d91a4d51d1af8b33217436 EMMC:/dev/block/platform/mtk-msdc.0/11230000.MSDC0/by-name/recovery c6b51263859aadb26de71a4bf52cd29f9cf003ee 11069696 74cbbad833e1975409d91a4d51d1af8b33217436:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
