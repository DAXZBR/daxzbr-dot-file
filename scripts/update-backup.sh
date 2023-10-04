#! /usr/bin/bash

echo "backing up my-dot-files..."
cp -rf ~/.config/dwm ~/.config/my-dot-file
cp -rf ~/.config/alacritty ~/.config/my-dot-file
cp -rf ~/.config/goblocks.json ~/.config/my-dot-file/goblocks
cp -rf ~/Imagens/wallpapers ~/.config/my-dot-file
echo "finished!"
