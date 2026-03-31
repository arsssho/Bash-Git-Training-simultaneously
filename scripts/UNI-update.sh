#! /bin/bash
# this script check your distribution and update reposotory and upgrade.

dist=/etc/os-release

if  grep -iq "Ubuntu" $dist || grep -qi "Debian" $dist ; then
	# The host is based on Ubuntu,
	# Run the apt update and upgrade command
	sudo apt update && sudo apt upgrade -y
elif grep -iq "Arch" $dist ; then
	# The host is based on Arch Linux
	# Run the pacman -Syu
	sudo pacman -Syu
fi

