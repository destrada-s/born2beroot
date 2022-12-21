#!/bin/bash
BOOT_MIN=$( uptime -s | cut -d ":" -f 2)
BOOT_SEC=$( uptime -s | cut -d ":" -f 3)

#if boot time was 12:05:52)
#We want to delay from 12:10:00 to 12:15:52
#We can do this by calculating the amount of mins and seconds we want to delay
#This can be done by geting the 05%10 = to get the amount of minutes we want to delay
#and then convert it to seconds by 5*60 = 300 that will be the minutes in seconds then
#just add the remainding seconds and you will get the desirede delay

DELAY=$( bc <<< $BOOT_MIN%10*60+$BOOT_SEC)

# sleep waits the amount of time you desire

sleep $DELAY