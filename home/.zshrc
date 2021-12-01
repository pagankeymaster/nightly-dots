if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"
#ZSH_THEME="simonoff"

# alias-finder battery catimg common-aliases copydir copyfile 
# geeknote git-extra history-substring-search python 
# copyfile aliases colorize history
# npm archlinux pip node command-not-found cp extract copydir 
plugins=(
    git
    colored-man-pages
    man
    sudo
    zsh-syntax-highlighting 
    zsh-autosuggestions
    zsh-autocomplete
)

source $ZSH/oh-my-zsh.sh

if [ $TILIX_ID ] || [ $VTE_VERSION ]; then
  source /etc/profile.d/vte.sh
fi

if [ -x "$(command -v exa)" ]; then
    # 'l' shows the contents + hidden ones including a header
    # 'll' just shows the contents including a header
    alias li="exa --long --all --group --icons"
    alias cs="exa"
    alias ca="exa --long --all --group"
fi

if [ -x "$(command -v logo-ls)" ]; then
    alias lls="logo-ls"
    alias lla="logo-ls -l --all"
fi

if [ -x "$(command -v neofetch)" ]; then
    LAUNCHER="$XDG_CONFIG_HOME/neofetch/launcher"

    alias coldarch="$LAUNCHER --coldarch"
    alias verycold="$LAUNCHER --verycoldarch"
    alias foodfetch="$LAUNCHER --food"

    alias floskull="$LAUNCHER --flowerskull"
    alias fspolar="$LAUNCHER --flowerskull polar"
    alias fswarm="$LAUNCHER --flowerskull warm"
    alias fsauro="$LAUNCHER --flowerskull aurorae"
fi

if [ -x "$(command -v ripgrep)" ]; then
    alias grep="ripgrep"
fi

if [ -x "$(command -v go-mtpfs)" ]; then
    alias mount-phone="go-mtpfs $HOME/Phone"
fi

if [ -x "$(command -v fusermount)" ]; then
    alias unmount-phone="fusermount -u $HOME/Phone"
fi

if [ -x "$(command -v udisksctl)" ]; then
    alias mount-ssd="udisksctl mount -b /dev/nvme0n1p1"
fi

if [ -x "$(command -v udisksctl)" ]; then
    alias unmount-ssd="udisksctl unmount -b /dev/nvme0n1p1"
fi

if [ -x "$(command -v betterlockscreen)" ]; then
    alias lock="betterlockscreen -l"
fi

if [ -x "$(command -v nvim)" ]; then
    alias nv="nvim"
fi

if [ -x "$(command -v ranger)" ]; then
    alias fm="ranger"
fi

alias logout="killall bspwm"
alias suspend="systemctl suspend"
alias pac="sudo pacman"
alias commit="git add . && git commit -m"
alias clone="git clone"
alias push="git push"
alias pull="git pull"
alias cls="clear"
alias la="ls -la"

alias zedit="nv $HOME/.zshrc"
alias bedit="nv $HOME/.bashrc"
alias fedit="nv $XDG_CONFIG_HOME/fish/config.fish"
alias p10kedit="nv $HOME/.p10k.zsh"

alias pipes1="lam -e pipes1"
alias pipes2="lam -e pipes2"
alias pipes2-slim="lam -e pipes2-slim"
alias rain="lam -e rain"
alias cclock="watch -t -n1 'date +%T | figlet' | lolcat"
alias fzf="fzf --prompt ' ' --pointer '->'"
alias yts="ytfzf -t"

# alias cat="ccat"
# alias less="cless"

export VISUAL=nvim;
export EDITOR=nvim;
export PATH="$XDG_DATA_HOME/gem/ruby/3.0.0/bin:$HOME/.jdks/jdk-16.0.1/bin:$HOME/.local/bin:$PATH"
export PS2="%2F%3F "
# export LD_PRELOAD=/usr/lib/libwcwidth-icons.so

SILENT_JAVA_OPTIONS="$JDK_JAVA_OPTIONS"
unset JDK_JAVA_OPTIONS
alias java='java "$SILENT_JAVA_OPTIONS"'
setopt HIST_IGNORE_ALL_DUPS

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

source "$HOME"/Dotfiles/nordfiles/home/colors.sh
source "$HOME"/Dotfiles/nordfiles/home/core.sh

alias cless="cless"
alias cmore="cmore"
alias ccat="ccat"

lam -e panes
printf "\n"
