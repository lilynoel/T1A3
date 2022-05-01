!#/bin/bash

# install bundler 
gem install bundler
bundle install

# install dependencies
gem install tty-prompt
bundle add tty-prompt

gem install tty-font
bundle add tty-font

gem install rainbow
bundle add rainbow

bundle install # update gemfile

# run program
ruby main.rb

