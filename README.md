# quest-dots

- [Turn off Windows hot key in Windows](https://www.howtogeek.com/282080/how-to-disable-the-built-in-windows-key-shortcuts/)

```bash

sudo add-apt-repository ppa:kgilmer/speed-ricer
sudo apt-get update

cp 
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall



sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
git clone git://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
sudo pip3 install percol
```

Private dots, mainly for ubuntu + i3wm



## 

```

# YouCompleteMe
sudo apt-get install -y build-essential cmake python-dev python3-dev
cd ~/.vim/bundle/YouCompleteMe
./install.py --clang-completer

```

## Ubuntu
```bash
mkdir -p ~/.zsh/completions
cp etc/hub.zsh_completion ~/.zsh/completions/_hub


sudo pip install git+https://github.com/shadowsocks/shadowsocks.git@master

# ignored
cd /tmp
sudo apt-get install build-essential
wget https://download.libsodium.org/libsodium/releases/LATEST.tar.gz
tar xf LATEST.tar.gz && cd libsodium-stable
./configure && make -j4 && sudo make install
sudo ldconfig
# ignored

```

## Arch
```bash
pac netctl wpa_actiond libsodium shadowsocks-libev proxychains
sudo cp config.json /etc/shadowsocks/
sudo cp proxychains.conf /etc/
sudo systemctl start shadowsocks-libev@config.service

```
## SDKMAN

```bash
curl -s "https://get.sdkman.io" | bash
source "$HOME/.sdkman/bin/sdkman-init.sh"
sdk version

sdk install springboot
sdk install groovy
sdk install gradle
spring run app.groovy
```

## CUDA
```
wget https://s3.amazonaws.com/personal-waf/cudnn-8.0-linux-x64-v5.1.tgz   
sudo tar -xzvf cudnn-8.0-linux-x64-v5.1.tgz   
sudo cp cuda/include/cudnn.h /usr/local/cuda/include
sudo cp cuda/lib64/libcudnn* /usr/local/cuda/lib64
sudo chmod a+r /usr/local/cuda/include/cudnn.h /usr/local/cuda/lib64/libcudnn*

```
## Wine

```
pac wine_gecko wine-mono winetricks wine-staging-nine
winecfg
sudo bin/pdfx /usr/local/bin
```

## Cloud

```
# dropbox
cd ~ && wget -O - "https://www.dropbox.com/download?plat=lnx.x86_64" | tar xzf -
~/.dropbox-dist/dropboxd
```



