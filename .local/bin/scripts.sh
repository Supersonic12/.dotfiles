#!/bin/bash
case "$1" in
	batterystate)
		STATE=$(acpi | awk '{print $3}' | tr -d ,)
		PERCENT=$(acpi | awk '{print $4}' | tr -d '%,')

		if [ "$STATE" = "Charging" ]; then
			echo "⚡ ${PERCENT}%"
		elif [ "$STATE" = "Discharging" ]; then
			if [ "$PERCENT" -le 30 ]; then
				echo "🪫 ${PERCENT}%"
			else
				echo "🔋 ${PERCENT}%"
			fi
		fi
		;;
	volumestate)
		amixer get Master | awk -F'[][]' 'END{ print "🔊" $2 }'
		;;
	brightnessstate)
		brightnessctl -m | awk -F, '{print "🔆" $4}'
		;;
	brightnessup)	
		brightnessctl set +5% && notify-send -r 9993 -t 1000 "Brightness Changed" "Percentage $(brightnessctl -m | awk -F',' 'END{print $4}')"
		;;
	brightnessdown)
		brightnessctl set 5%- && notify-send -r 9993 -t 1000 "Brightness Changed" "Percentage $(brightnessctl -m | awk -F',' 'END{print $4}')"
		;;
	volumeup)
		if [[ $(amixer get Master | awk -F '[][]' 'END{print $2}' | tr -d '%' ) -lt 100 ]];then
			pactl set-sink-volume @DEFAULT_SINK@ +5% && notify-send -t 1000 -r 9991 "Volume" "$(amixer get Master | awk -F'[][]' 'END{print $2}')"
		else 
			notify-send -t 1000 -r 9991 "Volume" "Maxed"
		fi
		;;
	volumedown)
		pactl set-sink-volume @DEFAULT_SINK@ -5% && notify-send -t 1000 -r 9991 "Volume" "$(amixer get Master | awk -F'[][]' 'END{print $2}')"
		;;
	rofilauncher)
		rofi -show drun \
			-theme ~/.config/rofi/arthur.rasi
		;;
	*)
		exit 1
		;;
esac
