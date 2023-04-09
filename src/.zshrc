source ~/.bin/zsh-snap/znap.zsh
eval "$(/opt/homebrew/bin/brew shellenv)"
eval "$(oh-my-posh init zsh --config ~/.oh-my-posh/themes/nordtron.omp.json)"

znap source marlonrichert/zsh-autocomplete

export DISPLAY=:0
source ~/.myalias
