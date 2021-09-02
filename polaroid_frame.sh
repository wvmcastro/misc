#!/bin/bash

ffmpeg -i $1 -filter_complex "[0]pad=w=80+iw:h=210+ih:x=40:y=40:color=#FFFFFF" out.jpg

ffmpeg -i out.jpg -filter_complex "[0]pad=w=40+iw:h=40+ih:x=20:y=20:color=#000000" $2

rm out.jpg
