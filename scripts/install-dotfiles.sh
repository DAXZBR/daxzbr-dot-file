#!/usr/bin/bash

is_user_root() {
	[ "$(id -u)" -eq 0 ]
}

start_install_dotfiles() {
	user_name="daxzbr"
	user_dir=/home/$user_name
	folder=".config"

	if [[ ! -d "$user_dir/.config" ]]; then
		echo "hidden {.config} folder doesns't exist!"
		echo "creating .config folder..."
		mkdir $userDir/.config
	fi

	cp -r ../dwm/ $user_dir/.config/
	cp -r ../fonts/FiraCodeNerdFont* /usr/share/fonts/TTF/

	if [[ ! -d "$user_dir/.scripts" ]]; then
		mkdir $user_dir/.scripts
	fi

	cp -r ../scripts/update-date.sh $user_dir/.scripts
	cp -r ../scripts/update-backup.sh $user_dir/.scripts
	cp -r ../goblocks/goblocks.json $userDir/.config/
	cp -r ../alacritty $user_dir/.config

	if [[ ! -d "$user_dir/Imagens/Wallpapers" ]]; then
		echo "Imagens folder doesn't exist!"
		echo "creating one..."
		mkdir -p $user_dir/Imagens/Wallpapers
	fi

	cp -r ../wallpapers/Wallpaper/* $user_dir/Imagens/Wallpapers

	echo "Installation has finished!"
}

if is_user_root; then
	start_install_dotfiles
else
	echo "Please, dude! Run this shit as root"
fi
