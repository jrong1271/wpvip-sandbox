#!/bin/bash
echo "Checking dependencies of the project"

which -s brew
if [[ $? != 0 ]] ; then
  echo 'Installing Homebrew'
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
  brew update
fi

which -s node
if [[ $? != 0 ]] ; then
  echo 'Installing Nodejs'
  brew install node
fi

which -s vagrant
if [[ $? != 0 ]] ; then
  echo 'Install Brew-Cask, VirtualBox, Vagrant'
  brew install caskroom/cask/brew-cask
  brew cask install virtualbox
  brew cask install vagrant
fi

if [ ! -d "_upstream" ]; then
  echo "Cloning git@github.com:jrong1271/vip-quickstart.git to _upstream/vip-quickstart"
  git clone git@github.com:jrong1271/vip-quickstart.git _upstream/vip-quickstart
fi

echo 'Done installing dependencies'
