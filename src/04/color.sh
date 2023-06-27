#!/bin/bash

# Черный: - 6
# Красный: - 2
# Зеленый: - 3
# Синий: - 4
# Фиолетовый: - 5
# Белый: - 1

# default
# red
# blue
# white
# purple

function background_color() {
    color=$1
    if [[ $color = "default" ]]
    then
        case "$2" in
        "b1") echo "\033[101m" ;;
        "b2") echo "\033[107m" ;;
        esac
    else
        case "$color" in
        1) echo "\033[107m" ;; # белый
        2) echo "\033[101m" ;; # красный
        3) echo "\033[102m" ;; # зеленый
        4) echo "\033[104m" ;; # синий
        5) echo "\033[105m" ;; # фиолетовый
        6) echo "\033[40m" ;; # черный
        esac
    fi
}

function font_color() {
    color=$1
    if [[ $color = "default" ]]
    then
        case "$2" in
        "f1") echo "\033[94m" ;;
        "f2") echo "\033[95m" ;;
        esac
    else
        case "$color" in
        1) echo "\033[97m" ;; # белый
        2) echo "\033[91m" ;; # красный
        3) echo "\033[92m" ;; # зеленый
        4) echo "\033[94m" ;; # синий
        5) echo "\033[95m" ;; # фиолетовый
        6) echo "\033[30m" ;; # черный #
        esac
    fi
}

function name_colors(){
    name=$1
    if [[ $name = "default" ]]
    then
        case "$2" in
        "b1") echo "(red)" ;;
        "f1") echo "(blue)" ;;
        "b2") echo "(white)" ;;
        "f2") echo "(purple)" ;;
        esac
    else
        case "$name" in
        1) echo "(white)" ;;
        2) echo "(red)" ;;
        3) echo "(green)" ;;
        4) echo "(blue)" ;;
        5) echo "(purple)" ;;
        6) echo "(black)" ;;
        esac
    fi
}

function check_num(){
    num=$value
    if [ -z $num ];
    then
        echo "default"
    else
        echo "$value"
    fi
}

counter=1
while IFS='=' read _ value
do
    if [ $counter == 1 ];
    then
        color_num_back1=$(check_num $value)
        background1=$(background_color $color_num_back1 "b1")
        color_name_back1=$(name_colors $color_num_back1 "b1")
    elif [ $counter == 2 ];
    then
        color_num_font1=$(check_num $value)
        font1=$(font_color $color_num_font1 "f1")
        color_name_font1=$(name_colors $color_num_font1 "f1")
    elif [ $counter == 3 ];
    then
        color_num_back2=$(check_num $value)
        background2=$(background_color $color_num_back2 "b2")
        color_name_back2=$(name_colors $color_num_back2 "b2")
    elif [ $counter == 4 ];
    then
        color_num_font2=$(check_num $value)
        font2=$(font_color $color_num_font2 "f2")
        color_name_font2=$(name_colors $color_num_font2 "f2")
    fi
    counter=$(( $counter + 1 ))

done < color.conf

