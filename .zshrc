# export PATH=$HOME/bin:/usr/local/bin:$PATH

export ZSH=/home/zhenglai/.oh-my-zsh

# `theme name` or `random`
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"

# use case-sensitive completion.
# CASE_SENSITIVE="true"

# use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# DISABLE_LS_COLORS="true"

DISABLE_AUTO_TITLE="true"
ENABLE_CORRECTION="false"
COMPLETION_WAITING_DOTS="true"

# set mail check interval as 0 to disable mail checking
MAILCHECK=0

# if you want to disable marking untracked files under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
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



# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
    archlinux
    git
    docker
    docker-compose
    sbt
    gradle
    mvn
    autojump
    colorize
    zsh-autosuggestions
    zsh-syntax-highlighting
    z
)

source $ZSH/oh-my-zsh.sh

eval "$(hub alias -s)"

bindkey '^p' autosuggest-accept
bindkey '^r' autosuggest-execute


# Opts
export RI="--format ansi --width 70"
export SBT_OPTS="-XX:+CMSClassUnloadingEnabled -XX:MaxMetaspaceSize=1G -XX:MetaspaceSize=1G -Xms2G -Xmx4G -Dlogging.level.root=INFO"
export MAVEN_OPTS="-Xmx4G -XX:ReservedCodeCacheSize=1G"
export PLAY_EDITOR="http://localhost:63342/api/file/?file=%s&line=%s"

# local .secrets 
# source ~/.secrets

export MASTER=local[*]
export SPARK_HOME=/opt/apache-spark
export PYTHONPATH=$SPARK_HOME/python
export PATH=$SPARK_HOME/bin:$PATH
export PATH="$HOME/.node_modules/bin:/home/$USER/.bin:/home/$USER/.local/bin:$PATH"
export MANPATH="/usr/local/man:$MANPATH"
# export PATH="$(ruby -e 'print Gem.user_dir')/bin:$PATH"
export LANG=en_US.UTF-8
export EDITOR="vim"

# temp fix of sbt launch up issue
export TERM="xterm-color"

# eval "$(rbenv init -)"

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# export SSH_KEY_PATH="~/.ssh/rsa_id"

# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"


###################### ALIAS START ####################

alias zshconfig="vim ~/.zshrc"
alias ohmyzsh="vim ~/.oh-my-zsh"
alias vi="vim"
alias o="open"
alias og="open https://github.com/zhenglaizhang"
alias oz="open http://zhenglaizhang.net"
alias gs="git status -s"
alias t="tmux"
alias tu="tmuximator"
alias tailf="tail -f"
alias ping="ping -c 6"
alias dm="docker-machine"
alias dk="docker"
alias c="clear"
alias cppath="pwd|pbcopy"
alias cat="pygmentize -g"
alias removeDeps="yaourt -Qdt"
alias pc="proxychains -q"
alias ruby="ruby -w"
eval "$(hub alias -s)"
# JVM related tools alias
alias jps="jps -mlvV"
# common alias
alias ll="la"
# git alias
alias g="tig"
alias gst="git status"
alias ga="git add "
alias gr='cd $(git rev-parse --show-toplevel)'
alias gd="git diff "
alias gdc="git diff --cached"
alias gaa="git add ."
alias gcam="git add .;git commit -am "
alias gci="git commit"
alias gcim="git commit -m"
alias gplom="proxychains git pull origin master --rebase"
alias gploo="proxychains git pull origin order --rebase"
alias gplod="proxychains git pull origin dev --rebase"
alias gphom="proxychains git push origin master"
alias gphoo="proxychains git push origin order"
alias gphod="proxychains git push origin dev"
alias gpho="proxychains git push origin"
alias gplo="proxychains git pull origin"
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

##################### ALIAS END #######################

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
# function sdk {
    export SDKMAN_DIR="/home/zhenglai/.sdkman"
    [[ -s "/home/zhenglai/.sdkman/bin/sdkman-init.sh" ]] && source "/home/zhenglai/.sdkman/bin/sdkman-init.sh"
# }

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
