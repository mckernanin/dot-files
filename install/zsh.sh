if ! is-macos -o ! is-executable brew; then
  echo "Skipped: zsh 4"
  return
fi

brew install zsh zsh-completions
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
