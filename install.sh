#!/bin/bash
# big package remove before update
sudo apt-get purge wolfram-engine wolframscript -y

# package update
sudo apt-get update -y
sudo apt-get upgrade -y

# Japanese font and IM
sudo apt-get install ibus-mozc fonts-ipafont fonts-ipaexfont -y

# libreoffice-l10n-ja
sudo apt-get install libreoffice-l10n-ja -y

# Noto font
#wget -O NotoSansCJKjp-hinted.zip https://noto-website-2.storage.googleapis.com/pkgs/NotoSansCJKjp-hinted.zip
#unzip -d NotoSansCJKjp-hinted NotoSansCJKjp-hinted.zip
#sudo mkdir -p /usr/share/fonts/opentype
#sudo mv -fv ./NotoSansCJKjp-hinted /usr/share/fonts/opentype/note
#rm -rfv NotoSansCJKjp-hinted.zip
#sudo fc-cache -fv
