#!/bin/bash
# first install brew (checkout webpage on http://brew.sh/)
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Now install brew-cask
brew tap caskroom/cask

# Change ownership (otherwise update won't work)
# Nowadays the ownership to /usr/local is no longer necessary, so commenting out the line
#sudo chown -R `whoami`:admin /usr/local

# Fix some issues around brew so that update works properly
cd $(brew --repository)
git reset --hard FETCH_HEAD

# And now all the nice software I need
brew install node@6
brew install Caskroom/cask/freemind
brew install Caskroom/cask/google-chrome
brew install Caskroom/cask/komodo-edit
brew install Caskroom/cask/handbrake
brew install Caskroom/cask/handbrakecli
brew install Caskroom/cask/vagrant
brew install Caskroom/cask/virtualbox
brew cask install macdown
brew tap cloudfoundry/tap
brew install cf-cli
brew cask install filezilla
brew cask install xampp

#brew-cask install eclipse-jee
brew cask install vlc

#brew-cask install gimp
#brew-cask install mongodb
#brew-cask install cyberduck

#brew-cask install mixxx
#brew-cask install Caskroom/cask/metaz
#brew-cask install Caskroom/cask/musicbrainz-picard
#brew-cask install Caskroom/cask/mixxx
#brew-cask install linein
#brew-cask install Caskroom/cask/xquartz
#brew-cask install homebrew/science/octave

#sudo -s
brew-cask install virtualbox

gem install jekyll
