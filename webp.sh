#!/bin/bash

convertToWebP() {
  for f in *.jpg *.gif *.png *.; do
    filename="${f%.*}"
    case "$f" in (*\**) continue;; esac
    echo $filename
    ffmpeg -y -i "$f" -lossless 1 -loop 0 "$filename.webp"
  done
}

# cd src/img/emote/MISSPEGGYx
# cd src/peggyx-recap-2024
cd src/img
convertToWebP
