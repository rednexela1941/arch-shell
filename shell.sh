source ~/Tooling/custom_commands.sh

# Alias so that emacs opens in terminal inste
alias emacs="emacs -nw"

function note {
    touch ~/Notes/$1.txt
    echo $2 > ~/Notes/$1.txt    
}


if [ ! -S ~/.ssh/ssh_auth_sock ]; then
    eval `ssh-agent`
    ln -sf "$SSH_AUTH_SOCK" ~/.ssh/ssh_auth_sock
fi

export SSH_AUTH_SOCK=~/.ssh/ssh_auth_sock

ssh-add -l > /dev/null || ssh-add ~/.ssh/gitkey


export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.gem/ruby/2.7.0/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$PATH:$(go env GOPATH)/bin"
export PATH="$HOME/gh-cli/bin:$PATH"
export PATH="$HOME/.node_modules/bin:$PATH"
export npm_config_prefix=~/.node_modules

export NODE_PATH=/usr/lib/node_modules
export EDITOR=emacs
export PATH="$PATH:$HOME/bin"
export GOBIN=$HOME/bin/

function nightshift {
	redshift -P -O 4000
}

function dayshift {
	redshift -P -O 6500
}



source ~/Wolf/custom_command.sh
alias chief="~/chief/chief"
alias ccat="pygmentize -g"
