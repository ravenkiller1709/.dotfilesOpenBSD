#!/usr/bin/env sh

export DISPLAY=:0.0

[[ `apm -a` = 1 ]] && exit

battlvl="$(apm -l)"

[[ $battlvl -lt 10 ]] && pgrep -x dunst >/dev/null && notify-send -i battery -u critical "Critical level: $(apm -m) minutes" && exit

[[ $battlvl -lt 16 ]] && pgrep -x dunst >/dev/null && notify-send -i battery "Battery level: $(apm -m) minutes"

exit 0

