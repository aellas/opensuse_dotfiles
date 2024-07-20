#!/bin/bash

sudo zypper refresh

apps=("fastfetch" "hyprland" "waybar" "opi" "wofi" "ranger" "kitty" "dunst" "neovide" "grim" "slurp" "swappy" "steam" "hyprpaper" "git" "curl" "polkit-gnome")

for app in "${apps[@]}"; do
  sudo zypper install -y "$app"
done

repo_url="https://github.com/aellas/personal-dotfiles.git"
target_dir="/home/$USER" # Adjust if you want a different directory

git clone "$repo_url" "$target_dir"

echo "Applications installed and repository downloaded to $target_dir!"
