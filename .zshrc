### ------------------------------------------------------------------ ###
### --------------------------OhMyZsh--------------------------------- ###
### ------------------------------------------------------------------ ###
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
#ZSH_THEME="robbyrussell"
ZSH_THEME="powerlevel10k/powerlevel10k"

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

### ------------------------------------------------------------------ ###
### -----------------------------General------------------------------ ###
### ------------------------------------------------------------------ ###
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

source $HOME/.venv/bin/activate

source ~/.nvm/nvm.sh

# Load Angular CLI autocompletion.
source <(ng completion script)

# https://github.com/zsh-users/zsh-autosuggestions
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# https://github.com/zsh-users/zsh-syntax-highlighting
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

### ------------------------------------------------------------------ ###
### -----------------------------Aliases------------------------------ ###
### ------------------------------------------------------------------ ###

alias ni=nvim;

# https://github.com/jesseduffield/lazydocker
alias lzd='lazydocker'

alias edraw="echo '\033[1mstart excaidraw locally... cd ~/src/forks/excalidraw; yarn start;\033[0m'; cd ~/src/forks/excalidraw; yarn start;";

alias lsl="echo '\033[1mprint full dir content in time asc. order : long list, sort by time, reverse order, human-readable... ls -ltrh\033[0m';ls -ltrh";

alias ghist="echo '\033[1msearch history... history | grep\033[0m'; history | grep";

alias gs="echo '\033[1mget git status... git status\033[0m'; git status";
alias gita="echo '\033[1madd files to git... git add\033[0m'; git add";
alias gitd="echo '\033[1mdiff files with git... git diff\033[0m'; git diff";
alias gitc="echo '\033[1mcommit staged files... git commit -m\033[0m'; git commit -m";
alias gitca="echo '\033[1madd unstaged files and commit... git commit -am\033[0m'; git commit -am";
