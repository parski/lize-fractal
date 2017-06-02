#!/bin/zsh

for frame in `seq 1 250`;
do
    initial=1.1
    scalar=0.6
    zoom=$((initial**(frame*scalar)-initial))
    echo "frame: $frame"
    echo "zoom: $zoom"
    python -m fractal mandelbrot --size=600x600 --depth=256 --zoom=$zoom --center=-1.1561441577x0.27770598 -o ./output/$frame.png
done

