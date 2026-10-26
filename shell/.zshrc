# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

ZSH_CUSTOM=$HOME/.dotfiles/misc/oh-my-zsh-custom

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="agnoster"

# Hide username in prompt
DEFAULT_USER=`whoami`

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git laravel composer macos gh git-flow-completion)

ARTISAN_OPEN_ON_MAKE_EDITOR=pstorm

FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"

source $ZSH/oh-my-zsh.sh

export PATH=Users/$DEFAULT_USER/.rvm/gems/ruby-2.1.2/bin:$PATH
#set numeric keys
# 0 . Enter
bindkey -s "^[Op" "0"
bindkey -s "^[Ol" "."
bindkey -s "^[OM" "^M"
# 1 2 3
bindkey -s "^[Oq" "1"
bindkey -s "^[Or" "2"
bindkey -s "^[Os" "3"
# 4 5 6
bindkey -s "^[Ot" "4"
bindkey -s "^[Ou" "5"
bindkey -s "^[Ov" "6"
# 7 8 9
bindkey -s "^[Ow" "7"
bindkey -s "^[Ox" "8"
bindkey -s "^[Oy" "9"
# + -  * /
bindkey -s "^[Ok" "+"
bindkey -s "^[Om" "-"
bindkey -s "^[Oj" "*"
bindkey -s "^[Oo" "/"

# Load the shell dotfiles, and then some:
# * ~/.dotfiles-custom can be used for other settings you don’t want to commit.
for file in ~/.dotfiles/shell/.{exports,aliases,functions}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file"
done

for file in ~/.dotfiles-custom/shell/.{exports,aliases,functions,zshrc}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file"
done
unset file

# Load rvm
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"

export PATH="$PATH:$HOME/.rvm/bin"
. $HOME/.dotfiles/shell/z.sh

# Alias hub to git
#eval "$(hub alias -s)"

# Sudoless npm https://github.com/sindresorhus/guides/blob/master/npm-global-without-sudo.md
NPM_PACKAGES="${HOME}/.npm-packages"
export PATH="$PATH:$NPM_PACKAGES/bin"
# Preserve MANPATH if you already defined it somewhere in your config.
# Otherwise, fall back to `manpath` so we can inherit from `/etc/manpath`.
export MANPATH="${MANPATH-$(manpath)}:$NPM_PACKAGES/share/man"

export PATH=$HOME/.dotfiles/bin:$PATH
[[ -e ~/.phpbrew/bashrc ]] && source ~/.phpbrew/bashrc

# Import ssh keys in keychain
ssh-add -A 2>/dev/null;

# Setup xdebug
#export XDEBUG_CONFIG="idekey=VSCODE"

# Enable autosuggestions
source ~/.dotfiles/misc/oh-my-zsh-custom/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh


# Extra paths
export PATH="$HOME/.composer/vendor/bin:$PATH"
export PATH=/usr/local/bin:$PATH
export PATH="$HOME/.yarn/bin:$PATH"
export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"
export PATH="/usr/local/opt/node@8/bin:$PATH"
export PATH="$PATH:$HOME/.config/composer/vendor/bin"

export PATH="/usr/local/opt/node@12/bin:$PATH"
export PATH="/usr/local/opt/imagemagick@6/bin:$PATH"
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
export PATH="/opt/homebrew/opt/node@18/bin:$PATH"

#eval "$(zoxide init zsh)"

# Herd injected PHP binary.
export PATH="/Users/lars/Library/Application Support/Herd/bin/":$PATH
export PHP_INI_SCAN_DIR="/Users/lars/Library/Application Support/Herd/config/php/":$PHP_INI_SCAN_DIR


# Herd injected PHP 8.2 configuration.
export HERD_PHP_82_INI_SCAN_DIR="/Users/lars/Library/Application Support/Herd/config/php/82/"


# Herd injected PHP 8.0 configuration.
export HERD_PHP_80_INI_SCAN_DIR="/Users/lars/Library/Application Support/Herd/config/php/80/"

#[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# bun completions
[ -s "/Users/lars/.bun/_bun" ] && source "/Users/lars/.bun/_bun"


# Herd injected PHP 8.3 configuration.
export HERD_PHP_83_INI_SCAN_DIR="/Users/lars/Library/Application Support/Herd/config/php/83/"


# Herd injected NVM configuration
export NVM_DIR="/Users/lars/Library/Application Support/Herd/config/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

[[ -f "/Applications/Herd.app/Contents/Resources/config/shell/zshrc.zsh" ]] && builtin source "/Applications/Herd.app/Contents/Resources/config/shell/zshrc.zsh"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

# pnpm
export PNPM_HOME="/Users/lars/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME/bin:"*) ;;
  *) export PATH="$PNPM_HOME/bin:$PATH" ;;
esac
# pnpm end


# Herd injected PHP 8.4 configuration.
export HERD_PHP_84_INI_SCAN_DIR="/Users/lars/Library/Application Support/Herd/config/php/84/"

. "$HOME/.atuin/bin/env"

eval "$(atuin init zsh)"
export PATH="$HOME/.spin/bin:$PATH"

# Added by Windsurf
export PATH="/Users/lars/.codeium/windsurf/bin:$PATH"


# opencode
export PATH=/Users/lars/.opencode/bin:$PATH


# Herd injected PHP 8.5 configuration.
export HERD_PHP_85_INI_SCAN_DIR="/Users/lars/Library/Application Support/Herd/config/php/85/"

export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/platform-tools
export JAVA_HOME=/Library/Java/JavaVirtualMachines/zulu-17.jdk/Contents/Home

export PATH="$HOME/.local/bin:$PATH"

alias claude-mem='bun "/Users/lars/.claude/plugins/marketplaces/thedotmack/plugin/scripts/worker-service.cjs"'
#compdef opencode
###-begin-opencode-completions-###
#
# yargs command completion script
#
# Installation: opencode completion >> ~/.zshrc
#    or opencode completion >> ~/.zprofile on OSX.
#
_opencode_yargs_completions()
{
  local reply
  local si=$IFS
  IFS=$'
' reply=($(COMP_CWORD="$((CURRENT-1))" COMP_LINE="$BUFFER" COMP_POINT="$CURSOR" opencode --get-yargs-completions "${words[@]}"))
  IFS=$si
  if [[ ${#reply} -gt 0 ]]; then
    _describe 'values' reply
  else
    _default
  fi
}
if [[ "'${zsh_eval_context[-1]}" == "loadautofunc" ]]; then
  _opencode_yargs_completions "$@"
else
  compdef _opencode_yargs_completions opencode
fi
###-end-opencode-completions-###

# Standard menu completion - Tab shows options, arrows to navigate, Enter to select
zstyle ':completion:*' menu select
setopt AUTO_MENU
setopt COMPLETE_IN_WORD


export SENTRY_ORG="eigens"


# Added by Antigravity
export PATH="/Users/lars/.antigravity/antigravity/bin:$PATH"

SAFEHOUSE_POLICY="$HOME/.config/agent-safehouse/my-safehouse.sb"
safe() { safehouse --add-dirs-ro=~/Projekte --enable=keychain "$@"; }

sandbox-claude() { sandbox-exec -f "$SAFEHOUSE_POLICY" -- claude --dangerously-skip-permissions "$@"; }
sandbox-codex() { sandbox-exec -f "$SAFEHOUSE_POLICY" -- codex --dangerously-bypass-approvals-and-sandbox "$@"; }
sandbox-opencode() { OPENCODE_PERMISSION='{"*":"allow"}' sandbox-exec -f "$SAFEHOUSE_POLICY" -- opencode "$@"; }
sandbox-copilot() { sandbox-exec -f "$SAFEHOUSE_POLICY" -- copilot "$@"; }
sandbox-pi() { sandbox-exec -f "$SAFEHOUSE_POLICY" -- pi "$@"; }
sandbox-agent() { sandbox-exec -f "$SAFEHOUSE_POLICY" -- agent "$@"; }

alias safe-claude-private="CLAUDE_CONFIG_DIR=~/.claude-private sandbox-claude"
alias safe-claude-admin="CLAUDE_CONFIG_DIR=~/.claude-admin sandbox-claude"
alias safe-claude-eigens="CLAUDE_CONFIG_DIR=~/.claude-eigens sandbox-claude"
alias claude-private="CLAUDE_CONFIG_DIR=~/.claude-private claude"
alias claude-admin="CLAUDE_CONFIG_DIR=~/.claude-admin claude"
alias claude-eigens="CLAUDE_CONFIG_DIR=~/.claude-eigens claude"

if command -v wt >/dev/null 2>&1; then eval "$(command wt config shell init zsh)"; fi

# machine-local secrets, not in git
[ -f ~/.zshrc.local ] && source ~/.zshrc.local
