# ~/.config/sway/bar.sh

date_str=$(date "+%a %d-%m-%Y :: %H:%M:%S")
battery=$(upower --show-info $(upower --enumerate | grep 'battery') | grep -E "state|percentage" | awk '{print $2}')
wifi=$(iwctl station wlp1s0f0 show | awk '/State/ {print $2} /Connected network/ {print $3}')
brightness_temp=$(brightnessctl -P | grep Current | awk '{ printf("%d", $3) }')
brightness=$(( (brightness_temp * 100) / 509 ))
volume_temp=$(pamixer --get-volume)
is_muted=$(pamixer --get-mute)

if [ "$is_muted" = "true" ]; then
    volume="󰸈 Muted"
else
    volume="󰕾 $volume_temp%"
fi

echo $volume :: ☀️$brightness% :: $battery :: $wifi :: $date_str  ""
