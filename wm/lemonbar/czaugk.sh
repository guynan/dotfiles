#!/usr/bin/bash

# This is a script written by the internet
# It works in a very simple manner and is to
# my specifications.
#
# Pipe it through lemonbar (xft) thusly;
#
# sh czaugk.sh | lemonbar -p -f 'Monospace Regular-9' &
#


STD="#ffb5b2af"
#BKG="#ff282522"
BKG="#ff000000"
DBL="#ff4C626D"
LBL="#ff6A7A8F"
GRN="#ff838A60"
MAG="#ff7D6A79"
RED="#ff660000"
YLW="#ff907245"
GRY="#ff262626"


clk(){
	date '+%a %d %b %H:%M'
}

work(){
	SPACE_NUM=$(xprop -root -notype _NET_CURRENT_DESKTOP | cut -d= -f2);
		case "$SPACE_NUM" in
			" 0")
				WORKSPACE='*1 2 3 4 5 6 7 8 9 10';;
			" 1")
				WORKSPACE='1 *2 3 4 5 6 7 8 9 10';;
			" 2")
				WORKSPACE='1 2 *3 4 5 6 7 8 9 10';;
			" 3")
				WORKSPACE='1 2 3 *4 5 6 7 8 9 10';;
			" 4")
				WORKSPACE='1 2 3 4 *5 6 7 8 9 10';;
			" 5")
				WORKSPACE='1 2 3 4 5 *6 7 8 9 10';;
			" 6")
				WORKSPACE='1 2 3 4 5 6 *7 8 9 10';;
			" 7")
				WORKSPACE='1 2 3 4 5 6 7 *8 9 10';;
			" 8")
				WORKSPACE='1 2 3 4 5 6 7 8 *9 10';;
			" 9")
				WORKSPACE='1 2 3 4 5 6 7 8 9 *10';;

		esac
	echo "$WORKSPACE"
}


wifi(){
        WID=$(iwconfig | grep wlp3s0 | cut -d: -f 2 | sed s/'"'//g)
	echo "⇅ ${WID// /}"
}

battery(){
	BAT=$(acpi --battery | cut -d, -f 2)
        echo "⭫$BAT"
}

vol(){
	VOL=$(amixer get Master | grep Mono: | cut -d\[ -f 2 | sed s/"] "//)
	echo "⊲ $VOL"
}

mpd(){
	if [[ $(mpc status | awk 'NR==2 {print $1}') == "[playing]" ]]; then
		TTL=$(mpc current --format "%title%")
		echo "♫ $TTL"
	else
		echo "♫ Paused"
	fi
}


while :; do

	echo "%{B$RED}%{l} ⭧ $(clk)  %{B$GRY}%{m} $(work) %{B$BKG}%{l}"
#	echo "%{l}%{B$YLW}  $(work)  %{l}%{r}%{B$RED}  $(vol)  %{B$MAG}  $(wifi)  %{B$LBL}  $(battery)  %{B$DBL}  $(mpd)  %{B$GRN}  ⭧ $(clk)  %{B$BKG}%{r}"

sleep 0.2;
done

