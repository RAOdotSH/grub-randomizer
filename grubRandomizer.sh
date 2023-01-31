#!/bin/bash

# This script will randomize the order of the grub boot menu themes located in "/boot/grub/themes/"

# Get the number of themes in the directory
numThemes=$(ls /boot/grub/themes/ | wc -l)
echo $numThemes

# Get a random number between 1 and the number of themes
randNum=$(( ( RANDOM % $numThemes )  + 1 ))
echo $randNum

# Get the name of the theme at the random number
themeName=$(ls /boot/grub/themes/ | sed -n $randNum'p')
echo $themeName

# Set the theme
sudo sed -i 's/GRUB_THEME=".*"/GRUB_THEME="\/boot\/grub\/themes\/'$themeName'\/theme.txt"/g' /etc/default/grub

# Update grub
sudo update-grub
