if ! is-macos -o ! is-executable brew; then
  echo "Skipped: Homebrew-Cask"
  return
fi

brew tap caskroom/versions
brew tap caskroom/cask
brew tap caskroom/fonts

# Install packages

apps=(
  alfred
  dash2
  dropbox
  firefox
  font-fira-code
  glimmerblocker
  google-chrome
  google-chrome-canary
  hammerspoon
  kaleidoscope
  macdown
  slack
  spotify
  transmit
  virtualbox
  visual-studio-code
  vlc
  sequel-pro
  postman
  slack
  harvest
  kap
  1password
  daisy-disk
  dropbox
  gitkraken
  gitscout
  hyper
  mongodb-compass
  now
  sketch
  trello
)

brew cask install "${apps[@]}"

# Quick Look Plugins (https://github.com/sindresorhus/quick-look-plugins)
brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlimagesize webpquicklook suspicious-package qlvideo

# Link Hammerspoon config
if [ ! -d ~/.hammerspoon ]; then ln -sfv "$DOTFILES_DIR/etc/hammerspoon/" ~/.hammerspoon; fi
