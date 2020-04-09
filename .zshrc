# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

export ZSH=$HOME/.oh-my-zsh

# ZSH_THEME="robbyrussell"
ZSH_THEME="bira" #"avit"


ZSH_COLORIZE_STYLE="default"
ZSH_COLORIZE_TOOL=pygmentize

HYPHEN_INSENSITIVE="true"
DISABLE_AUTO_UPDATE="true"
DISABLE_AUTO_TITLE="true"

COMPLETION_WAITING_DOTS="true"
MAILCHECK=0
DISABLE_UNTRACKED_FILES_DIRTY="true"

GIT_AUTO_FETCH_INTERVAL=1200 # in seconds

HIST_STAMPS="yyyy-mm-dd"
setopt BANG_HIST                 # Treat the '!' character specially during expansion.
setopt EXTENDED_HISTORY          # Write the history file in the ":start:elapsed;command" format.
setopt HIST_EXPIRE_DUPS_FIRST    # Expire duplicate entries first when trimming history.
setopt HIST_IGNORE_DUPS          # Dont record an entry that was just recorded again.
setopt HIST_IGNORE_ALL_DUPS      # Delete old recorded entry if new entry is a duplicate.
setopt HIST_FIND_NO_DUPS         # Do not display a line previously found.
setopt HIST_IGNORE_SPACE         # Dont record an entry starting with a space.
setopt HIST_SAVE_NO_DUPS         # Dont write duplicate entries in the history file.
setopt HIST_REDUCE_BLANKS        # Remove superfluous blanks before recording entry.
setopt HIST_VERIFY               # Dont execute immediately upon history expansion.
setopt HIST_BEEP                 # Beep when accessing nonexistent history.
setopt HIST_NO_STORE             # Dont store function definitions.

setopt complete_aliases
setopt +o nomatch

plugins=(
    # archlinux
    tmux
    kubectl
    # vscode
    # git-open
    #alias-finder
    # command-not-found
    git
    #git-extras
    git-auto-fetch
    #git-flow
    #gitignore
    # node
    # github
    # nvm
    #pip
    #redis-cli
    history
    docker
    docker-compose
    jsontools
    web-search
    #docker-machine
    #encode64
    #sbt
    z
    #gradle
    #mvn
    autojump
    colorize
    zsh-autosuggestions
    zsh-syntax-highlighting
    golang # https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/golang
)

#z
source $ZSH/oh-my-zsh.sh

# disable correction
# ENABLE_CORRECTION="true"
DISABLE_CORRECTION="true"
unsetopt correct_all

# change dir with out `cd`
setopt auto_cd
# use auto completion: cd ~/D/b/g/42<tab>


# User configuration
export MANPATH="/usr/local/man:$MANPATH"
export CUDA_HOME=/usr/local/cuda
export PATH="$PATH:$HOME/bin"
export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:$CUDA_HOME/lib64:$CUDA_HOME/extras/CUPTI/lib64"
export LANG=en_US.UTF-8
export ARCHFLAGS="-arch x86_64"
export SSH_KEY_PATH="~/.ssh/rsa_id"
export EDITOR='vim'
export TF_CPP_MIN_LOG_LEVEL=2 # warning
export PYTHONSTARTUP="$HOME/.pystartup.py"

export GOPATH="$HOME/go"
export PATH=$PATH:${GOPATH//://bin:}/bin
export GOTRACEBACK=all
export DISPLAY=$(cat /etc/resolv.conf | grep nameserver | awk '{print $2}'):0

alias task="asynctask -f"
alias pc='proxychains '
alias gco='git checkout -b'
alias gcod='git checkout dev'
alias gcom='git checkout master'
alias gco-='git checkout -'
alias gco--='git checkout -- .'
alias gcob='git checkout -b '
alias grd='git rebase dev'
alias grc='git rebase --continue'
alias gra='git rebase --abort'
alias grm='git rebase master'
alias gba='git branch -av'
# alias ccat='pygmentize -g'
alias repo='cd ~/repo'
alias gphom='git push origin master'
alias gpho='git push origin'
alias gcim='git commit -m '
alias gdc='git diff --cached '
alias gcam='git add . && git commit -m '
alias gcan='git commit --amend --no-edit'
alias gplom='git pull origin master --rebase'
alias gplo='git pull origin '
alias gpo='git push origin '
alias gl='git ll'
alias repo="cd ~/repo"
alias zshconfig="source ~/.zshrc"
alias pac="sudo pacman -S --needed "
alias subl="subl3"
alias gw="./gradlew --parallel"
alias cls="clear"

alias ccat='pygmentize -g'
alias nvon="sudo tee /proc/acpi/bbswitch <<< ON"
alias nvoff="rmmod nvidia_uvm && rmmod nvidia && sudo tee /proc/acpi/bbswitch <<< OFF"

###################### ALIAS START ####################

alias zshconfig="vim ~/.zshrc"
alias ohmyzsh="vim ~/.oh-my-zsh"
alias vi="vim"
alias o="open"
alias og="open https://github.com/zhenglaizhang"
alias oz="open http://zhenglaizhang.net"
alias gs="git status -sb"
alias t="tmux"
alias tu="tmuximator"
alias tailf="tail -f"
alias ping="ping -c 6"
alias dm="docker-machine"
alias dk="docker"
alias c="clear"
alias cppath="pwd|pbcopy"
alias removeDeps="yaourt -Qdt"
alias py="python3"
alias p="python3 -tt -OO"
alias pc="proxychains -q"
alias ruby="ruby -w"

# sudo apt install snapd
# sudo snap install hub --classic
eval "$(hub alias -s)"

# JVM related tools alias
# alias jps="jps -mlvV"
# common alias
alias ll="la"
# git alias
alias g="git"
alias s="stree"
alias gst="git status -sb"
alias gstash="git stash"
alias ga="git add "
alias gr='cd $(git rev-parse --show-toplevel)'
alias gd="git diff "
alias gdc="git diff --cached"
alias gaa="git add ."
alias gcam="git add .;git commit -am "
alias gci="git commit"
alias gcim="git commit -m"
alias gplom="git pull origin master --rebase"
# alias gploo="git pull origin order --rebase"
alias gplod="git pull origin dev --rebase"
alias gplodd="git pull origin develop --rebase"
alias gphom="git push origin master"
# alias gphoo="proxychains git push origin order"
alias gphod="git push origin dev"
# alias gpho="proxychains git push origin"
# alias gplo="proxychains git pull origin"
# alias gcl="proxychains git clone "
alias gmr="git merge"

# sbt alias
alias tt="sbt test"
alias tto="sbt testOnly"
alias vcc="open target/scala-2.11/scoverage-report/index.html"
alias co="sbt compile"
alias sbv="sbt validate"
alias sbr="sbt run"

# common alias
alias free="free -hw"
alias df="df -h"
alias pac="sudo pacman -S --needed "
alias ss="sudo sslocal -d start -c /etc/shadowsocks/config.json"
alias vpn="sudo openfortivpn"
alias f="vifm"
alias scala="scala -Dscala.color=true"
alias rmrf="rm -rf "
alias tailf="tail -f "
alias df="df -h"
alias pc="proxychains"
alias pi="sudo pip3 install --upgrade "
alias c.="code ."
alias c.r="code . -r"
# export DONT_PROMPT_WSL_INSTALL=1
function ci () { echo 'y' | \code "$@" ; }

##################### ALIAS END #######################


bindkey '^p' autosuggest-accept
bindkey '^r' autosuggest-execute


export KUBE_EDITOR='code --wait'

# opts
export RI="--format ansi --width 70"
export SBT_OPTS="-XX:+CMSClassUnloadingEnabled -XX:MaxMetaspaceSize=1G -XX:MetaspaceSize=1G -Xms2G -Xmx4G -Dlogging.level.root=INFO"
export MAVEN_OPTS="-Xmx1024m -XX:MaxPermSize=512m"
export PLAY_EDITOR="http://localhost:63342/api/file/?file=%s&line=%s"

function exists { which $1 &> /dev/null }

if exists percol; then
    function percol_select_history() {
        local tac
        exists gtac && tac="gtac" || { exists tac && tac="tac" || { tac="tail -r" } }
        BUFFER=$(fc -l -n 1 | eval $tac | percol --query "$LBUFFER")
        CURSOR=$#BUFFER         # move cursor
        zle -R -c               # refresh
    }

    zle -N percol_select_history
    bindkey '^F' percol_select_history
fi

fpath=(~/.zsh/completions $fpath) 
autoload -U compinit && compinit

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/zhenglai/.sdkman"
[[ -s "/home/zhenglai/.sdkman/bin/sdkman-init.sh" ]] && source "/home/zhenglai/.sdkman/bin/sdkman-init.sh"

# mkdir ~/.ruby
export GEM_HOME=~/.ruby/
export PATH="$PATH:~/.ruby/bin"

# key bindings
bindkey -s '\e[15~' 'task\n'


export POWERLINE_HOME=/usr/local/lib/python3.6/dist-packages/powerline/bindings
if [[ -r ${POWERLINE_HOME}/zsh/powerline.zsh ]]; then
    source ${POWERLINE_HOME}/zsh/powerline.zsh
fi

complete -F __start_kubectl k

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
