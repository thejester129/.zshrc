export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/andrewhollis/python/miniforge3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/andrewhollis/python/miniforge3/etc/profile.d/conda.sh" ]; then
        . "/Users/andrewhollis/python/miniforge3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/andrewhollis/python/miniforge3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

export PATH="/opt/homebrew/opt/llvm/bin:$PATH"

# git terminal
parse_git_branch() {
    git branch 2> /dev/null | sed -n -e 's/^\* \(.*\)/[\1]/p'
}
COLOR_DEF='%f'
COLOR_DIR='%F{46}'
COLOR_GIT='%F{1}'
NEWLINE=$'\n'
setopt PROMPT_SUBST
export PROMPT='${COLOR_DIR}%d ${COLOR_GIT}$(parse_git_branch)${COLOR_DEF}# '

# aliases
alias vim="nvim"
alias diff="sdiff -bBWs"
alias cat="bat --style=plain"
alias cd=cd_fn

cd_fn() {
  arg="$1"
  builtin cd "$arg" && ls
}

#colors

#1.   directory
#2.   symbolic link
#3.   socket
#4.   pipe
#5.   executable
#6.   block special
#7.   character special
#8.   executable with setuid bit set
#9.   executable with setgid bit set
#10.   directory writable to others, with sticky bit
#11.   directory writable to others, without sticky


export CLICOLOR=1
export LSCOLORS=dxfxxxxxgxxxxxxxxxxxxx
