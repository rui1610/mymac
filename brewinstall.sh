#!/bin/bash
# first install brew (checkout webpage on http://brew.sh/)
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Now install brew-cask
brew tap caskroom/cask

#comment

# Change ownership (otherwise update won't work)
# Nowadays the ownership to /usr/local is no longer necessary, so commenting out the line
#sudo chown -R `whoami`:admin /usr/local

# Fix some issues around brew so that update works properly
cd $(brew --repository)
git reset --hard FETCH_HEAD

# And now all the nice software I need
brew install node@6
brew cask install google-chrome
brew cask install komodo-edit
#brew cask install handbrakecli
brew cask install vagrant

brew cask install macdown
brew tap cloudfoundry/tap
brew install cf-cli
brew cask install filezilla
brew cask install xampp
brew cask install caskroom/cask/shiftit
brew cask install visual-studio-code

#brew-cask install eclipse-jee
brew cask install vlc
brew cask install caskroom/cask/openemu 

brew install ffmpeg --with-fdk-aac --with-sdl2 --with-freetype --with-libass --with-libvorbis --with-libvpx --with-opus --with-x265
# usage: ffmpeg -i input.mkv -codec copy output.mp4

brew cask install gimp
brew cask install handbrake

#brew-cask install mongodb
#brew-cask install cyberduck

brew cask install mixxx
brew cask install metaz
brew cask install musicbrainz-picard
brew cask install linein
brew cask install xquartz
brew cask install octave

brew cask install caskroom/cask/flightgear

# Install also dupeGuru, DateTree, FlightGear, ShowHiddenFiles

#sudo -s
brew cask install virtualbox
# Cool screen saver
brew cask install aerial

brew cask install freemind


gem install jekyll
