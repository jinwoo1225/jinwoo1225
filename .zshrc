# myconfig

# mysimple 테마 자동 설치
if [[ ! -f ~/.oh-my-zsh/themes/mysimple.zsh-theme ]]; then
  curl -so ~/.oh-my-zsh/themes/mysimple.zsh-theme \
    https://raw.githubusercontent.com/jinwoo1225/jinwoo1225/main/mysimple.zsh-theme
fi

ZSH_THEME="mysimple"

## endof theme

COMPLETION_WAITING_DOTS="true"
DISABLE_UNTRACKED_FILES_DIRTY="true"
HIST_STAMPS="mm/dd/yyyy"

export GITHUB_TOKEN=$(gh auth token)
export GITHUB_ACCESS_TOKEN=$(gh auth token)

plugins=(
	git
  	docker 
	docker-compose
	gh
	golang
	brew
)

# Brew Completion
FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='mvim'
fi

