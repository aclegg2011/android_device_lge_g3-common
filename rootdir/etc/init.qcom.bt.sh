#!/system/bin/sh

if [ -f /vendor/bin/hci_qcomm_init ]; then
    setprop ro.qualcomm.bt.hci_transport smd
    setprop vendor.bluetooth.status off
    /vendor/bin/hci_qcomm_init -b `cat /data/misc/bluetooth/bdaddr`
    setprop vendor.bluetooth.status on
fi

exit 0
