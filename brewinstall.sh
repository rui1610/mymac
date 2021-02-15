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
gem install jekyll

# Cool screen saver

#brew-cask install cyberduck
#brew cask install eclipse-jee

brew install ffmpeg --with-fdk-aac --with-sdl2 --with-freetype --with-libass --with-libvorbis --with-libvpx --with-opus --with-x265
# usage: ffmpeg -i input.mkv -codec copy output.mp4

brew cask install aerial
brew cask install arduino
brew cask install avidemux
brew cask install camtasia
brew cask install filezilla
brew cask install flightgear
brew cask install freemind
brew cask install gimp
brew cask install easysda
brew cask install google-chrome
brew cask install handbrake
brew cask install kid3
brew cask install macdown
brew cask install makemkv
brew cask install musicbrainz-picard
brew cask install pencil
brew cask install plex
brew cask install postman
brew cask install raspberry-pi-imager
brew cask install shiftit
brew cask install sketch
brew cask install vagrant
brew cask install visual-studio-code
brew cask install vlc
brew cask install xampp
brew cask install xquartz

#brew casl install studiolinkstandalone
#brew cask install handbrakecli
#brew cask install komodo-edit
#brew cask install linein
#brew cask install metaz
#brew cask install mixxx
#brew cask install octave
#brew cask install openemu 
#brew cask install virtualbox
#brew cask install vlc
