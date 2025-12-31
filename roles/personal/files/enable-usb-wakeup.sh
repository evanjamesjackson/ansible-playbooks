#!/bin/bash

for dev in /sys/bus/usb/devices/*/power/wakeup; do
    echo enabled > "$dev" 2>/dev/null
done
