#!/bin/bash
# first install brew (checkout webpage on http://brew.sh/)
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Now install brew-cask
brew install caskroom/cask/brew-cask

# Change ownership (otherwise update won't work)
sudo chown -R `whoami`:admin /usr/local

# Fix some issues around brew so that update works properly
cd $(brew --repository)
git reset --hard FETCH_HEAD

# And now all the nice software I need
brew-cask install google-chrome
brew-cask install komodo-edit
brew-cask install eclipse-jee
brew-cask install handbrake
brew-cask install macdown
brew-cask install vlc
brew-cask install filezilla
brew-cask install gimp
brew-cask install mongodb
brew-cask install cyberduck
brew-cask install freemind
brew-cask install mixxx
brew-cask install Caskroom/cask/metaz
brew-cask install Caskroom/cask/musicbrainz-picard
brew-cask install Caskroom/cask/mixxx
brew-cask install linein
brew-cask install homebrew/science/octave

brew tap cloudfoundry/tap
brew install cf-cli

sudo -s
brew-cask install xampp
brew-cask install virtualbox

gem install jekyll
