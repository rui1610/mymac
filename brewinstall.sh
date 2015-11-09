#!/bin/bash
# first install brew (checkout webpage on http://brew.sh/)
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Now install brew-cask
brew install caskroom/cask/brew-cask

# And now all the nice software I need
brew-cask install mongodb
brew-cask install macdown
brew-cask install komodo-edit
brew-cask install freemind
brew-cask install vlc
brew-cask install google-chrome
brew-cask install mixxx
brew-cask install linein
brew-cask install handbrake
brew-cask install filezilla
brew-cask install cyberduck
brew-cask install gimp
brew-cask install eclipse-jee

sudo -s
brew-cask install xampp
brew-cask install virtualbox