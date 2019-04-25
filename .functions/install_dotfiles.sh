install_dotfiles() {
  clone_z
  download_fonts
  link_dotfiles
  install_oh_my_zsh
  install_homebrew
  install_rbenv
  install_nvm
  source ~/.zshrc
  brew_install
  pip3_install && source ~/.zshrc
  gem_install
  npm_install
  brew_cask_install
  macos
  return $?
}
