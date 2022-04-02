#!/bin/sh

battery_percent=$(apm | grep -m1 "Remaining battery life:" | awk -F " " '{print $4}' | sed 's/%//g')
tstate=$(apm | grep -m1 "Battery Status:" | awk -F " " '{print $3}')
remaining_time=$(apm | grep -m1 "Remaining battery time:" | awk -F " " '{print $4}')

#echo $battery_percent
#echo $state
#echo $remaining_time

if [ $tstate == "charging" ]; then
   state=" "
else
    state=""
fi

if [ "$battery_percent" -gt 97 ]; then
    icon=""
elif [ "$battery_percent" -gt 75 ]; then
    icon=""
elif [ "$battery_percent" -gt 50 ]; then
    icon=""
elif [ "$battery_percent" -gt 25 ]; then
    icon=""
elif [ "$battery_percent" -gt 10 ]; then
    icon=""
else
    icon=""
fi

if [ "$remaining_time" == "unknown" ]; then
   echo "${icon}${state} ${battery_percent}%"
else
   echo "${icon}${state} ${battery_percent}% 祥 ${remaining_time}"
fi


