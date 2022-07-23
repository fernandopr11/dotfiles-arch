set fish_greeting ""

# Aliases

alias grep "grep --color=auto"
alias cat "bat --style=plain --paging=never"
alias ls "exa --group-directories-first"
alias tree "exa -T"
alias off "shutdown now"
alias up "yay -Syu"
alias fpm "/home/fernando/.local/share/gem/ruby/3.0.0/bin/fpm"
alias down "git p -f origin HEAD^:main"

alias st "/home/fernando/scripts/./test-suite.sh"

alias bdd "cd /home/fernando/Escritorio/Universidad/GestionBDD"

# Prompt

starship init fish | source
