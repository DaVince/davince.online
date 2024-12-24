#!/bin/bash

convertToWebP() {
  rm -f *.webp
  for f in *; do
    filename="${f%.*}"
    ffmpeg -i "$f" -lossless 1 -loop 0 "$filename.webp"
  done
}

# cd src/img/emote/MISSPEGGYx
# cd src/peggyx-recap-2024
cd src/img
convertToWebP
