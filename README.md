# aliases

Aliases


For `.sh` files, you'll need to run `chmod 755 main.sh` or whatever.


In `.bashrc` add:

```sh
export PATH="$HOME/GitHub/aliases:$PATH"
```

Other stuff to put in that file:

```sh
export PATH="$HOME/GitHub/aliases:$PATH"

rd() {
  if [[ "$1" == "/s" && "$2" == "/q" && -n "$3" ]]; then
    rm -rf "$3"
  else
    echo "Usage: rd /s /q <path>"
  fi
}

alias dir='ls'
alias del='rm'
alias explorer='nautilus'
alias cd..='cd ..'
alias cls='clear'
alias csl='clear'
alias home='cd ~/GitHub
clear'
```
