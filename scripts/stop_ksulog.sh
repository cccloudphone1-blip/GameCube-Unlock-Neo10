#!/system/bin/sh
# Auto-kill KernelSU 15.5-minute logcat/dmesg dumpers & sulogd daemon
sleep 2
pkill -9 -f "logcat -b all"
pkill -9 -f "dmesg -w -r"
pkill -9 -f "sulogd"
rm -rf /data/adb/ksu/log/*
chmod 000 /data/adb/ksu/log
