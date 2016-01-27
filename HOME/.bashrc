
source ~/.aliases

alias racket="rlwrap racket"
alias python="python3"

# set qt version to 5 for qt chooser
export QT_SELECT=qt5

# set history size unlimited
export HISTFILESIZE=
export HISTSIZE=
# record timestamp with history
export HISTTIMEFORMAT='%F %T  '

export HISTCONTROL=ignoredups:erasedups  # no duplicate entries
shopt -s histappend                      # append to history, don't overwrite it

# Save and reload the history after each command finishes
export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"

# hubub specific - add arc to bin
export PATH="$PATH:/home/niuzeta/works/hubub-doc/arc/arcanist/bin/"
#export PATH="$PATH:/home/niuzeta/works/hubub-doc/arc/arcanist/bin/"

# hubub specific - add intelliJ to PATH
export PATH="$PATH:/home/niuzeta/works/idea-IU-141.1010.3/bin"

# VS Code
export PATH="$PATH:/home/niuzeta/Downloads/VSCode-linux-x64"

# setting a GOPATH
export GOPATH=$HOME/works/golang

export PATH="$GOPATH/bin:$PATH"


# set PATH so it includes sqlite studio if it exists
if [ -d "$HOME/bin/SQLiteStudio" ]; then
    PATH="$HOME/bin/SQLiteStudio:$PATH"
fi

if [ -d "$HOME/bin/dev/depot_tools" ]; then
    PATH="$HOME/bin/dev/depot_tools:$PATH"
fi

# cmd line file-path completion: https://github.com/pindexis/qfc
[[ -s "$HOME/.qfc/bin/qfc.sh" ]] && source "$HOME/.qfc/bin/qfc.sh"


repeat_char() {
    str=$1
    num=$2
    printf "%0.s$str" $(seq 1 $num)
}

m () {
    ___DEST=""

    if [ -z $1 ]
    then
        echo "no parameter supplied"
    elif [ "$1" == "adm" ]
    then
        ___DEST+="/home/niuzeta/works/preps/adm/"

        #TODO: check if $2 is number and pad zeroes
        if [ "$2" == "3" ]
        then
            ___DEST+="03/"
        fi

        cd $___DEST
    fi
}

export PATH=$HOME/cmus/bin:$PATH
