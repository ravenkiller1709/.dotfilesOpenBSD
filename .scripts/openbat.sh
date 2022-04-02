#!/bin/sh

battery_percent=$(apm | awk '/^Battery/ { print $4}' | sed 's/%//g')
tstate=$(apm |awk '/^Battery/ { print $3 }' )
remaining_time=$(apm |awk '/^Battery/ { print $6 }' )

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
   echo "${icon}${state}  ${battery_percent}%"
else
   echo "${icon}${state} ${battery_percent}% 祥 ${remaining_time}"
fi
