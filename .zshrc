export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
zstyle ':omz:update' frequency 7
# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"
HIST_STAMPS="dd.mm.yyyy"
plugins=(
	git
	zsh-autosuggestions
	dirhistory
)

source $ZSH/oh-my-zsh.sh

if [[ -n $SSH_CONNECTION ]]; then
	export EDITOR='nvim'
else
	export EDITOR='vim'
fi

# End of lines added by compinstall

# Ctrl + arrows/detele/backspace
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word
bindkey '^[[M' kill-word
bindkey '^H' backward-kill-word

alias sps="yay -Ss"
alias spu="yay -Syu"
alias spi="yay -S"
alias spr="yay -R"

alias gi="git init"
alias ga="git add"
alias gc="git commit -m"
alias g="git"

alias ls="ls -1 --color=auto"

alias audio-dl="youtube-dl -f bestaudio --extract-audio"
alias mp4-dl="youtube-dl -f 'bestvideo[ext=mp4]+bestaudio[ext=m4a]/mp4'"
alias mp3-dl="youtube-dl --extract-audio --audio-format mp3"

function cd(){
	clear && builtin cd $1 && ls
}
