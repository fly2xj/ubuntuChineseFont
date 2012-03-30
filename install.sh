#! /bin/bash

echo "\033[0;33mDownload Font 4 U...\033[0m"
/usr/bin/env git clone https://github.com/fly2xj/ubuntuChineseFont.git ~/.ubuntuCF

if ! [ -d ~/.ubuntuCF ]; then 
    echo "download failed. exit"
    exit
fi

cd ~/.ubuntuCF
sudo mkdir /usr/share/fonts/truetype/myfonts/
sudo cp Fonts/*.* /usr/share/fonts/truetype/myfonts/

sudo fc-cache -f -v

#modify fonts config
sudo mv /etc/fonts/conf.avail/69-language-selector-zh-cn.conf /etc/fonts/conf.avail/69-language-selector-zh-cn.conf.bac
sudo cp ./69-language-selector-zh-cn.conf /etc/fonts/conf.avail/69-language-selector-zh-cn.conf




