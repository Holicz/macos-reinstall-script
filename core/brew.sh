brew_install() {
  brew install $1 >/dev/null 2>&1
}

brew_uninstall() {
  brew remove $1 >/dev/null 2>&1
}

brew_install_cask() {
  brew cask install $1 >/dev/null 2>&1
}
