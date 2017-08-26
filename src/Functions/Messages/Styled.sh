#!/usr/bin/env bash
c "Loading Styled Messages Library" Green

Bold="\e[1m"
Dim="\e[2m"
Underlined="\e[4m"
Blink="\e[5m"
Inverted="\e[7m"
Hidden="\e[8m"
Reset="\e[0m"

function blink(){
    echo -e "${Blink}${1}${Reset}"
}

function dim(){
    echo -e "${Dim}${1}${Reset}"
}

