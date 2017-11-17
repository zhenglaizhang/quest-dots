# quest-dots

```bash
cp 
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall



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

## CUDA
```
wget https://s3.amazonaws.com/personal-waf/cudnn-8.0-linux-x64-v5.1.tgz   
sudo tar -xzvf cudnn-8.0-linux-x64-v5.1.tgz   
sudo cp cuda/include/cudnn.h /usr/local/cuda/include
sudo cp cuda/lib64/libcudnn* /usr/local/cuda/lib64
sudo chmod a+r /usr/local/cuda/include/cudnn.h /usr/local/cuda/lib64/libcudnn*

```
