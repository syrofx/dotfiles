# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source ~/powerlevel10k/powerlevel10k.zsh-theme
PATH="$PATH:/usr/games"
export PATH

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
alias ll='ls -la'
alias pipes='~/.local/bin/pipes.sh'
alias logout='xfce4-session-logout --logout'
alias peaclock="peaclock --config-dir ~/.config/peaclock"


# sotn decom alias
alias sotn="sudo make clean && sudo make -j extract && sudo make -j build && sudo make expected"
alias dec="sudo .venv/bin/python3 ./tools/decompile.py"
alias differ="sudo .venv/bin/python3 ./tools/asm-differ/diff.py -mow3 --overlay"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# use alias
# change volume
alias setvol="alsamixer -c 1"
