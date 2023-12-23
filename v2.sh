#!/bin/bash

# Function to display colorful text
function show_colorful_text() {
    local colors=("92" "93" "94" "95" "96" "97")

    for color in "${colors[@]}"
    do
        echo -e "\e[${color}mInstalling...\e[0m"
        sleep 1
    done
}

# Install dependencies
show_colorful_text

# Download and execute the script
echo -e "\e[94mDownloading and executing the script...\e[0m"
wget -q -O rafan.sh https://raw.githubusercontent.com/RafanSTR/Azerd/ABSTRAK/rafan.sh
bash rafan.sh