if [[ -e "/c/Program Files/ctags/" ]]; then mv "/c/Program Files/ctags/" "/c/Program Files/ctags.bak"; fi

mkdir -p "/c/Program Files/ctags/"
cp ctags/ctags.exe "/c/Program Files/ctags/ctags"
