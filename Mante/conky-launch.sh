#!/bin/env sh

killall conky

#conky -c $HOME/.config/conky/conkyrc-dark-bspwm &
conky -c /home/caio-lauro/caio-lauro/.conky/Mainte/conkyrc-dark-bspwm &
sleep 0.8
#conky -c $HOME/.config/conky/conkyrc-dark-bg &
conky -c /home/caio-lauro/caio-lauro/.conky/Mainte/conkyrc-dark-bg &
