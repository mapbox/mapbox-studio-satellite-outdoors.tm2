#!/bin/bash

motorway='rgba(0,0,0,0.2)'
stroke='#FFFFFF'

for reflen in {1..6}; do
    sm_width=$(($reflen*5+10))
    sm_height=13
    lg_width=$(($reflen*5+12))
    lg_height=16
    echo "<?xml version='1.0' standalone='no'?>
    <!DOCTYPE svg PUBLIC '-//W3C//DTD SVG 20010904//EN'
        'http://www.w3.org/TR/2001/REC-SVG-20010904/DTD/svg10.dtd'>
    <svg width='1' height='1'><rect x='0.5' y='0.5' width='$sm_width' height='$sm_height' rx='3'
        fill='$motorway' stroke='$stroke' stroke-width='1' /></svg>" \
        > motorway_sm_$reflen.svg
    echo "<?xml version='1.0' standalone='no'?>
    <!DOCTYPE svg PUBLIC '-//W3C//DTD SVG 20010904//EN'
        'http://www.w3.org/TR/2001/REC-SVG-20010904/DTD/svg10.dtd'>
    <svg width='1' height='1'><rect x='0.5' y='0.5' width='$lg_width' height='$lg_height' rx='4'
        fill='$motorway' stroke='$stroke' stroke-width='1' /></svg>" \
        > motorway_lg_$reflen.svg 
done
