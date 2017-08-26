#!/usr/bin/env bash
echo "Loaded Messages Coloring Library"

# Foreground Colors
Default="\e[39m"
Black="\e[30m"
Red="\e[31m"
Green="\e[32m"
Yellow="\e[33m"
Blue="\e[34m"
Magenta="\e[35m"
Cyan="\e[36m"
LightGray="\e[37m"
DarkGray="\e[90m"
LightRed="\e[91m"
LightGreen="\e[92m"
LightYellow="\e[93m"
LightBlue="\e[94m"
LightMagenta="\e[95m"
LightCyan="\e[96m"
White="\e[97m"

function c(){
    # Word/Message as $1
    # Color as $2

    echo -e "${!2}${1}${Default}"
}