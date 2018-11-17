#!/bin/bash

~/mac-setup/install.sh zsh \
  --script-exist "[ -d ~/.oh-my-zsh ]" \
  --script-install '
    sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"' \
  --script-config "
    [ -f ~/.zshrc ] && rm ~/.zshrc
    ln -s ~/mac-setup/zsh/zshrc ~/.zshrc
    ls -la ~/.zshrc" \
  --script-uninstall '
    [ -f ~/.zshrc ] && rm ~/.zshrc
    echo y | sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/uninstall.sh)"' \
  $@
