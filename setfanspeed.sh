#!/bin/bash

username="youruser"
password="Y0uRP4ssw0rD"
IDRAC_IP="192.168.178.255"

while true; do
    # Run the command and save the output to a variable
    temp=$(sensors | cut -c 17- | tail -n 2 | head -n 1 | cut -c -2)

    # Check the temperature range and print an appropriate message
    if [ $temp -ge 1 ] && [ $temp -lt 42 ]; then
        ipmitool -I lanplus -H $IDRAC_IP -U $username -P $password raw 0x30 0x30 0x02 0xff 0x0F
        echo "Speed 15%"
    elif [ $temp -ge 42 ] && [ $temp -lt 45 ]; then
        ipmitool -I lanplus -H $IDRAC_IP -U $username -P $password raw 0x30 0x30 0x02 0xff 0x14
        echo "Speed 20%"
    elif [ $temp -ge 45 ] && [ $temp -lt 50 ]; then
        echo "Speed 30%"
        ipmitool -I lanplus -H $IDRAC_IP -U $username -P $password raw 0x30 0x30 0x02 0xff 0x1e
    elif [ $temp -ge 50 ] && [ $temp -lt 55 ]; then
        echo "Speed 40%"
        ipmitool -I lanplus -H $IDRAC_IP -U $username -P $password raw 0x30 0x30 0x02 0xff 0x28
    elif [ $temp -ge 55 ] && [ $temp -lt 60 ]; then
        echo "Speed 50%"
        ipmitool -I lanplus -H $IDRAC_IP -U $username -P $password raw 0x30 0x30 0x02 0xff 0x32
    elif [ $temp -ge 60 ] && [ $temp -lt 65 ]; then
        echo "Speed 60%"
        ipmitool -I lanplus -H $IDRAC_IP -U $username -P $password raw 0x30 0x30 0x02 0xff 0x3c
    elif [ $temp -ge 65 ] && [ $temp -lt 70 ]; then
        echo "Speed 70%"
        ipmitool -I lanplus -H $IDRAC_IP -U $username -P $password raw 0x30 0x30 0x02 0xff 0x46
    elif [ $temp -ge 70 ] && [ $temp -lt 75 ]; then
        echo "Speed 80%"
        ipmitool -I lanplus -H $IDRAC_IP -U $username -P $password raw 0x30 0x30 0x02 0xff 0x50
    elif [ $temp -ge 75 ] && [ $temp -lt 80 ]; then
        echo "Speed 90%"
        ipmitool -I lanplus -H $IDRAC_IP -U $username -P $password raw 0x30 0x30 0x02 0xff 0x5a
    elif [ $temp -ge 80 ]; then
        echo "Speed 100%"
        ipmitool -I lanplus -H $IDRAC_IP -U $username -P $password raw 0x30 0x30 0x02 0xff 0x64
    fi

    # Wait for 15 seconds before checking the temperature again
    sleep 15
done
