# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/marko/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="honukai"
# ZSH_THEME="agnoster"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

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
HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git colorize copyfile docker node fd github gitignore sublime ssh-agent npm fzf zsh-syntax-highlighting zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

# User configuration

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

# Languages
export LANG=en_US.UTF-8
export LC_MESSAGES="en_US.UTF-8"
export LC_CTYPE=en_US.UTF-8
export LC_ALL="en_US.UTF-8"

# Overridable locale support
if [ -z $$LC_ALL ]; then
  export LC_ALL=C
fi
if [ -z $LANG ]; then
  export LANG=en_US
fi

# edit php.ini
alias phpini='sudo vim /etc/php/php.ini'

# edit httpd.conf
alias apacheconf='sudo vim /etc/httpd/conf/httpd.conf'

# edit hosts
alias hosts='sudo vim /etc/hosts'

# better ls
alias ls="exa -lhaG"

# reload
alias reload="source ~/.zshrc"

# find todos
alias todos='ack -n -R --nogroup "(TODO|FIND|FIX(ME)?):" --ignore-dir={composer,vendor,vendors,min,lib}'

# find by name
alias qfind="find . -name "

# git log detailed
alias glg='git log --date-order --all --graph --format="%C(green)%h%Creset %C(yellow)%an%Creset %C(blue bold)%ar%Creset %C(red bold)%d%Creset%s"'

# git log files changed
alias glg2='git log --date-order --all --graph --name-status --format="%C(green)%H%Creset %C(yellow)%an%Creset %C(blue bold)%ar%Creset %C(red bold)%d%Creset%s"'

# history
alias h='history'

if [ -w ~/.zsh_history -o -w ~ ]; then
  SAVEHIST=100000
  HISTSIZE=100000
  HISTFILE=~/.zsh_history
fi

# git folder
alias gg='cd ~/Git'

# SQL Dump
alias sqldump="sh dump.sh SERVERUSERNAME SERVERIP DBNAME DBUSERNAME DBPASSWORD"

# active connections
alias connections='lsof -i'

# Display Weather
alias weather="curl wttr.in/nyc"

# clear
alias c='clear'

# Time Zone  
# TZ='America/New_York'; export TZ

# Edit this File
alias zshrc="sudo vim ~/Git/zshrc-linux/.zshrc"

# colored search in files
alias grep='grep --color=auto'

# flush dns
alias flush='sudo ifconfig en0 down && sudo ifconfig en1 down && sudo ifconfig en2 down && sudo route flush && sudo ifconfig en0 up && sudo ifconfig en1 up && sudo ifconfig en2 up'

# remove .git
alias ungit='find . -name '.git' -exec rm -rf {} \;'

# IP info
alias ip='curl https://ipinfo.io/plain; echo'
# alias ip="ifconfig -a | perl -nle'/(\d+\.\d+\.\d+\.\d+)/ && print $1'"

# Dolphon > Open
alias open="dolphin"

# Update Mirrors
alias mirrorupdate='sudo reflector --latest 250 --protocol https --sort rate --save /etc/pacman.d/mirrorlist'

# Servers
alias dobox="ssh marko@45.55.60.122"

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Notes

# Shortcut				Default Binding
# Next Tiling Layout			Meta+M
# Previous Tiling Layout		Meta+Shift+PgUp
# Toggle Floating			Meta+F
# Move Window Left			Meta+Shift+H
# Move Window Right			Meta+Shift+L
# Move Window Up			Meta+Shift+K
# Move Window Down			Meta+Shift+J
# Toggle Tiling				Meta+Shift+f11
# Swap Window With Master		Meta+Shift+M
# Resize Active Window To The Left	Meta+Alt+H
# Resize Active Window To The Right	Meta+Alt+L
# Resize Active Window To The Top	Meta+Alt+K
# Resize Active Window To The Bottom	Meta+Alt+J
# Increase Number Of Masters		Meta+*
# Decrease Number Of Masters		Meta+_
# Dump Clients				Meta+Shift+Escape
# Cycle Rotations			Meta+Shift+R

# Find
# fd

# Run Neofetch on Start
neofetch

