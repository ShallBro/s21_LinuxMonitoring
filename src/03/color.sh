#!/bin/bash

function background_color() {
    color=$var
    case "$color" in
    1) echo "\033[107m" ;;
    2) echo "\033[101m" ;;
    3) echo "\033[102m" ;;
    4) echo "\033[104m" ;;
    5) echo "\033[105m" ;;
    6) echo "\033[40m" ;;
    esac
}

function font_color() {
    color=$var
    case "$color" in
    1) echo "\033[97m" ;;
    2) echo "\033[91m" ;;
    3) echo "\033[92m" ;;
    4) echo "\033[94m" ;;
    5) echo "\033[95m" ;;
    6) echo "\033[30m" ;;
    esac
}

counter=1
for var in "$@"
do

    if [ $counter == 1 ];
    then
        background1=$(background_color $var)
    elif [ $counter == 2 ];
    then
        font1=$(font_color $var)
    elif [ $counter == 3 ];
    then
        background2=$(background_color $var)
    elif [ $counter == 4 ];
    then
        font2=$(font_color $var)
    fi
    counter=$(( $counter + 1 ))

done
# Черный: 40 - 6
# Красный: 41 - 2
# Зеленый: 42 - 3
# Синий: 44 - 4
# Фиолетовый: 45 - 5
# Белый: 47 - 1

