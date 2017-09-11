#!/bin/bash
# big package remove before update
sudo apt-get purge wolfram-engine -y

# package update
sudo apt-get update -y
sudo apt-get upgrade -y

# Japanese font and IM
sudo apt-get install ibus-mozc fonts-ipafont fonts-ipaexfont -y

# libreoffice-l10n-ja
sudo apt-get install libreoffice-l10n-ja -y

# autoremove
sudo apt-get autoremove -y

# old "note" directory remove (my mistake on 2017/7/13)
sudo rm -R /usr/share/fonts/opentype/note
sudo mkdir -p /usr/share/fonts/opentype/noto

# NotoSans(Gothic) font
wget -O NotoSansCJKjp-hinted.zip https://noto-website.storage.googleapis.com/pkgs/NotoSansCJKjp-hinted.zip
unzip -d NotoSansCJKjp-hinted NotoSansCJKjp-hinted.zip
sudo mv -fv ./NotoSansCJKjp-hinted/* /usr/share/fonts/opentype/noto
rm -rfv NotoSansCJKjp-hinted.zip
rmdir NotoSansCJKjp-hinted

# NotoSerif(Mincho)
wget -O NotoSerifCJKjp-hinted.zip https://noto-website.storage.googleapis.com/pkgs/NotoSerifCJKjp-hinted.zip
unzip -d NotoSerifCJKjp-hinted NotoSerifCJKjp-hinted.zip
sudo mv -fv ./NotoSerifCJKjp-hinted/* /usr/share/fonts/opentype/noto
rm -rfv NotoSerifCJKjp-hinted.zip
rmdir NotoSerifCJKjp-hinted

# font cache
sudo fc-cache -fv
