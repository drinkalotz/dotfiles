#!/bin/bash
current=$(brightnessctl g)
modified=$((current + 25))
echo "${current}"
echo "${modified}"

if ((modified > 255)); then
        modified=255
fi

if ((current != modified)); then
        brightnessctl s "${modified}"
fi

