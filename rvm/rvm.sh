#!/bin/bash

~/mac-setup/install.sh rvm \
  --script-version "" \
  --script-install '
    [ ! "$CI" ] && \
      \curl -sSL https://get.rvm.io | bash -s stable --ruby' \
  --script-uninstall '
    [ ! "$CI" ] && \
      sudo rm -rf ~/.rvm' \
  $@

# ~/mac-setup/install.sh ruby --script-install "rvm install ruby" $@

# ~/mac-setup/brew/brew.sh $@

# ~/mac-setup/install.sh pod --script-install "gem install cocoapods" $@

# ~/mac-setup/install.sh fastlane --script-install "gem install fastlane -NV" $@
