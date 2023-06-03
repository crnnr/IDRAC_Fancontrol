#!/bin/bash

# Set the username and password variables
username="Hax0rUs3rn4me"
password="Hax0rP4ssW0rd"

# Set the iDRAC IP variable
IDRAC_IP="192.168.178.255"

# Initialize previous fan speed variable
prev_speed=""

while true; do
# Run the command and save the output to a variable
temp=$(sensors | cut -c 17- | tail -n 2 | head -n 1 | cut -c -2)

# Check the temperature range and print an appropriate message
if [ $temp -ge 1 ] && [ $temp -lt 45 ]; then
new_speed="0x0F"
message="Speed 15%"
elif [ $temp -ge 45 ] && [ $temp -lt 50 ]; then
new_speed="0x14"
message="Speed 20%"
elif [ $temp -ge 50 ] && [ $temp -lt 55 ]; then
new_speed="0x1e"
message="Speed 30%"
elif [ $temp -ge 55 ] && [ $temp -lt 60 ]; then
new_speed="0x28"
message="Speed 40%"
elif [ $temp -ge 60 ] && [ $temp -lt 65 ]; then
new_speed="0x32"
message="Speed 50%"
elif [ $temp -ge 65 ] && [ $temp -lt 70 ]; then
new_speed="0x3c"
message="Speed 60%"
elif [ $temp -ge 70 ] && [ $temp -lt 75 ]; then
new_speed="0x46"
message="Speed 70%"
elif [ $temp -ge 75 ] && [ $temp -lt 80 ]; then
new_speed="0x50"
message="Speed 80%"
elif [ $temp -ge 80 ] && [ $temp -lt 85 ]; then
new_speed="0x5a"
message="Speed 90%"
elif [ $temp -ge 85 ]; then
new_speed="0x64"
message="Speed 100%"
fi

# Check if the fan speed has changed
if [ "$new_speed" != "$prev_speed" ]; then
# Send the fan speed command to the iDRAC
ipmitool -I lanplus -H $IDRAC_IP -U $username -P $password raw 0x30 0x30 0x02 0xff $new_speed
echo $message
prev_speed=$new_speed
fi

# Wait for 15 seconds before checking the temperature again
sleep 15
done
