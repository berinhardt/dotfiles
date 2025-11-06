#!/bin/bash
BASE=$(pwd)
echo installing from $BASE
rm -f ~/.bashrc
ln -s "$BASE/bashrc" ~/.bashrc

mkdir -p ~/.config

rm -rf ~/.config/foot
rm -rf ~/.config/nvim
rm -rf ~/.config/rofi
rm -rf ~/.config/sway
rm -rf ~/.config/waybar

ln -s "$BASE/config/foot" ~/.config/foot
ln -s "$BASE/config/nvim" ~/.config/nvim
ln -s "$BASE/config/rofi" ~/.config/rofi
ln -s "$BASE/config/sway" ~/.config/sway
ln -s "$BASE/config/waybar" ~/.config/waybar
