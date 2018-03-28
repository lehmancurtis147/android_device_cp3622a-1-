#!/system/bin/sh
# This file is added by Yulong.
#

# No path is set up at this point so we have to do it here.
PATH=/sbin:/system/sbin:/system/bin:/system/xbin
export PATH

# Run nfc script
if [ ! -e /dev/pn544 ]; then
    if [ -f /system/etc/permissions/android.hardware.nfc.xml ]; then
        rm /system/etc/permissions/android.hardware.nfc.xml
    fi
    if [ -f /system/etc/permissions/android.hardware.nfc.hce.xml ]; then
        rm /system/etc/permissions/android.hardware.nfc.hce.xml
    fi
    if [ -f /system/preinstall/app/com.jwsoft.nfcactionlauncher ]; then
        rm /system/preinstall/app/com.jwsoft.nfcactionlauncher
    fi
    setprop persist.sys.nfc.chip unexist
else
    setprop persist.sys.nfc.chip exist
fi

if [ ! -e /data/misc/wifi/WCNSS_qcom_wlan_nv.bin ]; then
    cp /system/etc/wifi/WCNSS_qcom_wlan_nv.bin /data/misc/wifi/WCNSS_qcom_wlan_nv.bin
fi

if [ ! -e /data/misc/wifi/WCNSS_wlan_dictionary.dat ]; then
    cp /system/etc/wifi/WCNSS_wlan_dictionary.dat /data/misc/wifi/WCNSS_wlan_dictionary.dat
fi
