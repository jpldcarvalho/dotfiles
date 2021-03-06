export TERMINAL="st"

export ZSH="$HOME/dotfiles/oh-my-zsh"

export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin:$HOME/.gem/ruby/2.6.0/bin:$HOME/.local/bin

ZSH_THEME="oxide"

plugins=(tmux git zsh-autosuggestions)

ZSH_TMUX_AUTOSTART=true
ZSH_TMUX_AUTOCONNECT=false

alias tmux='tmux -u'

source $ZSH/oh-my-zsh.sh
source $HOME/dotfiles/alias

export EDITOR='vim'

if [ -x "$(command -v dircolors)" ]; then
   eval "$(dircolors -b ~/dotfiles/dircolors)"
fi

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/suser/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/home/suser/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/suser/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/home/suser/Downloads/google-cloud-sdk/completion.zsh.inc'; fi
