#!/bin/bash
# convert all png and jpg images in current folder (and subfolders) to webp

find . -type f \( -iname "*.png" -o -iname "*.jpg" -o -iname "*.jpeg" \) | while read f; do
  out="${f%.*}.webp"
  echo "Converting $f → $out"
  cwebp -q 80 "$f" -o "$out"
done

