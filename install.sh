#!/bin/bash

packages=(
    'neofetch'  # TODO: switch off neofetch
    'onefetch'
    # 'fastfetch'
)
apt_repositories=(
    'ppa:o2sh/onefetch'
)

for repository in ${apt_repositories[@]}; do
    sudo DEBIAN_FRONTEND=noninteractive add-apt-repository -y $repository
done

sudo apt update -y
sudo apt upgrade -y

for package in ${packages[@]}; do
    sudo apt install $package -y
done
