alias sbt="env JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk-17.jdk/Contents/Home sbt"

# zsh syntax highligher
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# bat
export BAT_THEME='gruvbox-dark'
alias cat='bat --paging=never'

# powerlevel10k
source /usr/local/share/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi


