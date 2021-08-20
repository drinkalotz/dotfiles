#!/bin/bash
current=$(brightnessctl g)
modified=$((current - 25))
echo "${current}"
echo "${modified}"

if ((modified < 1)); then
	modified=1
fi

if ((current != modified)); then
	brightnessctl s "${modified}"
fi

