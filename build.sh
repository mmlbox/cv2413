#!/bin/bash

KSS2VGM=../../dsa/kss2vgm/build/kss2vgm

for N in `seq -f '%02g' 1 4`; do
  mgsc-js -o mgs/cv3x_${N}.mgs mml/cv3x_${N}.mml 
  $KSS2VGM -l2 -p300 -ovgm/cv3x_${N}.vgm mgs/cv3x_${N}.mgs
  gzip -n --stdout vgm/cv3x_${N}.vgm > vgm/cv3x_${N}.vgz
done
