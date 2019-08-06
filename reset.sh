#/bin/sh
 
rm -rf /cache/recovery/command
echo "--wipe_data" > /cache/recovery/command
echo "--wipe_cache" >> /cache/recovery/command
sync
sync
sleep 1
sync
sync
reboot recovery
