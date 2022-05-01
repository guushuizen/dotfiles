export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="cloud"

HYPHEN_INSENSITIVE="true"

DISABLE_UPDATE_PROMPT="true"

export UPDATE_ZSH_DAYS=1

DISABLE_AUTO_TITLE="true"

ENABLE_CORRECTION="true"

COMPLETION_WAITING_DOTS="true"

DISABLE_UNTRACKED_FILES_DIRTY="true"

plugins=(git)

export OBJC_DISABLE_INITIALIZE_FORK_SAFETY=YES

source $ZSH/oh-my-zsh.sh

eval "$(/opt/homebrew/bin/brew shellenv)"
export PATH="/usr/local/opt/python@3.8/bin:$PATH"
export PATH="$HOME/.composer/vendor/bin:$PATH"
export PATH="$HOME/.poetry/bin:$PATH"

eval "$(pyenv init -)"

export NVM_DIR="$HOME/.nvm"
if [ -d "$NVM_DIR" ]; then
	[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
	[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
fi

source ~/.aliases

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/guus/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/guus/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/guus/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/guus/Downloads/google-cloud-sdk/completion.zsh.inc'; fi

# PHP 8.0
PHPDIR="/opt/homebrew/opt/php@8.0"
if [ -d "$DIR" ]; then
	export PATH="/bin:$PATH"
	export PATH="/opt/homebrew/opt/php@8.0/sbin:$PATH"
fi

# zsh autosuggestions
if [ -d "/opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh" ]; then
	source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
else
	brew install zsh-autosuggestions
	source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
fi
