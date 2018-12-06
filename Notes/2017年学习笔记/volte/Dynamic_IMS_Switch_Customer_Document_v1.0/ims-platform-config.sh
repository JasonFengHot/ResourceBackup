touch ims-platform-config.txt

output="ims-platform-config.txt"

echo "[volte]" > $output
grep -r 'config_device_volte_available">true' ./core/res/res/ | cut -d "/" -f 5 >> $output

echo "[vilte]" >> $output
grep -r 'config_device_vt_available">true' ./core/res/res/ | cut -d "/" -f 5 >> $output

echo "[wfc]" >> $output
grep -r 'config_device_wfc_ims_available">true' ./core/res/res/ | cut -d "/" -f 5 >> $output

cat $output | less
