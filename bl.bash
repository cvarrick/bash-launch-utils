#!/bin/bash
clear

TERMINAL="/usr/bin/terminator"

read -p "[f]irefox, [c]hrome, e[l]inks, or cl[i]pboard: " -n 1 browser

case $browser in
  l)
    if elinks -remote ping\(\) >/dev/null 2>&1; then
      elinks -remote "openURL($1)"
    else
      exec $TERMINAL -e "elinks $1"
    fi
    ;;
  f)
    firefox -new-tab "$1"  >/dev/null 2>&1
    ;;
  c)
    chromium "$1" >/dev/null 2>&1
    ;;
  i)
    echo  "$1"  | xclip -i >/dev/null 2>&1
    ;;
  *)      exit
    ;;
esac
clear
exit
