cd /tmp
git clone https://github.com/powerline/fonts.git --depth=1
cd fonts
./install.sh
fc-cache -vf
cd ..
rm -rf fonts
