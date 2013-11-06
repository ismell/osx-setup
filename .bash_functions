
function ff() {
  if [ -z "$2" ]; then
    grep --color=auto --exclude "*\.git*" -I -r -i "$1" .
  else
    if [ "$1" = "--" ]; then
      find . -iname "*${2}*"
    else
      grep --color=auto --exclude "*\.git*" -I --include "*$2*" -r -i "$1" .
    fi
  fi;
}
