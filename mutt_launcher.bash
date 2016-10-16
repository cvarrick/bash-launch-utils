#!/bin/bash
echo -en "\033]0;mutt - gowanut\a" ;
TERMINAL="/usr/bin/terminator"
MUTT='/usr/bin/mutt'


$TERMINAL -T "mutt - oneill.john.w" -e $MUTT  &
# $TERMINAL -e $MUTT -F ~/.mutt_comgrades.rc &
$MUTT -F ~/.mutt_gowanut.rc

