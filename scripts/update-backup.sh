#! /usr/bin/sh

echo "backing up my-dot-files..."
cp -rf ~/.config/dwm ~/.config/my-dot-files
cp -rf ~/.config/alacritty ~/.config/my-dot-files
cp -rf ~/.config/goblocks.json ~/.config/my-dot-files/goblocks
cp -rf ~/Imagens/wallpapers ~/.config/my-dot-files
echo "finished!"
