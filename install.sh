#! /bin/bash

echo "\033[0;33mDownload Font 4 U...\033[0m"
/usr/bin/env git clone https://github.com/fly2xj/ubuntuChinesFont.git ~/.ubuntuCF

if ! [ -d ~/.ubuntuCF ]; then 
    echo "download failed. exit"
    exit
fi

cd ~/.ubuntuCF

