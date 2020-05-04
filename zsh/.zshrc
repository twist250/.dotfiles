#REMOVE CONTAINER BY A SPECIFIC NAME
rmcn () {docker container rm -f $(docker ps -a | awk '{ print $1,$2,$11 }' | grep $@ | awk '{print $1 }') }
#ALIASES
alias drmac="docker rm $(docker ps -a -q) -f"
alias gcd="git checkout dev"
alias b="byobu"
alias start_utorrent="utserver -settingspath /opt/utorrent-server-alpha-v3_3/ -daemon"
alias stop_utorrent="sudo pkill utserver"
alias reload="source ~/.zshrc"
alias f="fzf"

#before launch of lightdm settings
alias before_lightdm_settings='xhost +SI:localuser:root'

##convert cat to bat
alias cat="bat"

## get rid of command not found ##
alias cd..='cd ..'
 
## a quick way to get out of current directory ##
alias ..='cd ..'
alias ...='cd ../../../'
alias ....='cd ../../../../'
alias .....='cd ../../../../'
alias .4='cd ../../../../'
alias .5='cd ../../../../..'

#Create parent directories on demand
alias mkdir='mkdir -pv'

alias edit='nano'

#Show open ports
alias ports='netstat -tulanp'

## pass options to free ##
alias meminfo='free -m -l -t'
 
## get top process eating memory
alias psmem='ps auxf | sort -nr -k 4'
alias psmem10='ps auxf | sort -nr -k 4 | head -10'
 
## get top process eating cpu ##
alias pscpu='ps auxf | sort -nr -k 3'
alias pscpu10='ps auxf | sort -nr -k 3 | head -10'
 
## Get server cpu info ##
alias cpuinfo='lscpu'
 
## older system use /proc/cpuinfo ##
##alias cpuinfo='less /proc/cpuinfo' ##
 
## get GPU ram on desktop / laptop##
alias gpumeminfo='grep -i --color memory /var/log/Xorg.0.log'


# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block, everything else may go below.
#if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
# source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
#fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/twist/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
#ZSH_THEME="nebirhos"
#ZSH_THEME=""
#ZSH_THEME="spaceship"
#ZSH_THEME="robbyrussell"
ZSH_THEME="random"
#ZSH_THEME="dieter"
#ZSH_THEME="sonicradish"
#ZSH_THEME="muse"
#ZSH_THEME="norm"
#ZSH_THEME=powerlevel10k/powerlevel10k
# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" "itchy" "sonicradish" "3den")

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
mvn
zsh-autosuggestions
zsh-syntax-highlighting
extract
sudo
dirhistory
npm
vscode
web-search
history
docker
microk8s
docker-compose
zsh-interactive-cd
)

source $(dirname $(gem which colorls))/tab_complete.sh
source $ZSH/oh-my-zsh.sh
#source ~/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh
alias lc='colorls -lA --sd'
alias ls='colorls --group-directories-first'
alias ll='colorls -lA --sd --group-directories-first'

#Sort by modification time
alias lm='ls -t -1'

bindkey '^`' autosuggest-clear
# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
 if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='vim'
 else
   export EDITOR='mvim'
 fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
 alias zshconfig="nano ~/.zshrc"
 alias ohmyzsh="nano ~/.oh-my-zsh"
# alias idea="bash /opt/jetbrains/idea/bin/idea.sh </dev/null &>/dev/null &"
 alias c="clear"
 alias dockerip="docker container inspect --format '{{ .NetworkSettings.IPAddress }}'"
 alias pcat='pygmentize -f terminal256 -O style=native -g'
 alias dc='docker container'
## microk8s START##
 #alias k="microk8s.kubectl"
 alias mvdcud="mvn compile jib:dockerBuild && docker-compose up -d"
 alias mvdcu="mvn compile jib:dockerBuild && docker-compose up"
 #alias dcd="docker-compose down -v --rmi local"
 #if [ $commands[microk8s.kubectl] ]; then source <(microk8s.kubectl completion zsh | sed "s/complete -o default -F __start_kubectl kubectl/complete -o default -F __start_kubectl microk8s.kubectl/g" | sed "s/complete -o default -o nospace -F __start_kubectl kubectl/complete -o default -o nospace -F __start_kubectl microk8s.kubectl/g"); fi
## microk8s END##



#source /home/twist/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

export ANDROID_HOME=/home/twist/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools
#export JAVA_HOME=/usr/lib/jvm/jdk-13.0.2
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
#[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
fpath=(~/.zsh/completion $fpath)
autoload -Uz compinit && compinit -i


#pure them configs
#fpath+=$HOME/.zsh/pure
#autoload -Uz promptinit
#promptinit
#prompt pure


# stow (th stands for target=home)
stowth() {
  stow -vSt ~ $1
}

unstowth() {
  stow -vDt ~ $1
}

### BYOBU INIT
 #_byobu_sourced=1 . /usr/bin/byobu-launch
 # _byobu_sourced=1 . /usr/bin/byobu-launch 2>/dev/null || true
###

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/twist/.sdkman"
[[ -s "/home/twist/.sdkman/bin/sdkman-init.sh" ]] && source "/home/twist/.sdkman/bin/sdkman-init.sh"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
