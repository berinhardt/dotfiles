#!/bin/bash
curl "$(curl "https://api.unsplash.com/photos/random?client_id=$(cat ~/unsplash.apikey)" -o - | jq -r ".urls.regular")" -o ~/Documents/WP.jpg
swaymsg output "*" bg ~/Documents/WP.jpg fill
