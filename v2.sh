Tentu, berikut adalah script bash yang telah diperbarui dengan perubahan yang Anda inginkan:
 
 
#!/bin/bash

# Function to display loading animation
function show_loading() {
    local delay=0.1
    local animation=""
    local screen_width=$(tput cols)

    echo -n "Installing Curl..."
    while true; do
        local animation_width=${#animation}
        local remaining_width=$((screen_width - animation_width))
        local padding=$(printf "%-${remaining_width}s" "")
        echo -ne "\r$animation$padding"
        sleep ${delay}
        animation="${animation}#"
        if [ ${#animation} -gt $screen_width ]; then
            animation="${animation#?}"
        fi
    done
}

# Install Curl with loading animation
show_loading &
sudo apt-get update > /dev/null 2>&1
sudo apt-get install curl -y > /dev/null 2>&1
kill $! && trap 'kill $!' SIGTERM
echo ""

# Additional commands
apt install -y
apt update -y
apt upgrade -y
apt install lolcat -y
gem install lolcat

# Get the IP address of the current machine
ip_address=$(curl -s ifconfig.me)

# Check if the IP address is in the REGIST file
is_registered=$(curl -s https://raw.githubusercontent.com/RafanSTR/Azerd/ABSTRAK/REGIST | grep -q "$ip_address" && echo "true" || echo "false")

# Display the result in a box for 3 seconds
echo "+------------------------+"
echo "|                        |"
echo -n "|   Alamat IP "
if [ $is_registered == "true" ]; then
    echo -n "terdaftar    "
else
    echo -n "tidak terdaftar"
    echo "   |"
    echo "|                        |"
    echo "+------------------------+"
    echo "Access Denied"
    exit 1
fi
echo "   |"
echo "|                        |"
echo "+------------------------+"

sleep 3

# Prompt for installation choice
clear
echo "1. Lanjutkan instalasi"
echo "2. Batalkan instalasi"

read -p "Masukkan pilihan Anda (1 atau 2): " choice

if [ $choice -eq 1 ]; then
    echo "Melanjutkan instalasi..."
elif [ $choice -eq 2 ]; then
    echo "Instalasi dibatalkan."
    exit
else
    echo "Pilihan tidak valid. Instalasi dibatalkan."
    exit
fi

# Download and run the installation script
echo "Mengunduh dan menjalankan skrip instalasi..."
wget -q https://raw.githubusercontent.com/RafanSTR/Azerd/ABSTRAK/rafan.sh
chmod +x rafan.sh
./rafan.sh

# Remove the installation script
rm -f v2.sh
 
 
Sekarang, script akan menunggu input pilihan Anda sebelum menampilkan pesan "Pilihan tidak valid" dan melakukan tindakan yang sesuai dengan pilihan yang Anda berikan.
 
Apakah ada yang lain yang bisa saya bantu?