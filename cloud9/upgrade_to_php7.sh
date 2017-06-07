#!/bin/sh
sudo apt-get update
sudo apt-get install libmcrypt-dev
Next, we download phpbrew and move it to /usr/local/bin:

curl -L -O https://github.com/phpbrew/phpbrew/raw/master/phpbrew
chmod +x phpbrew
sudo mv phpbrew /usr/local/bin/
phpbrew init

# add this to your ~/.bashrc:
#[[ -e ~/.phpbrew/bashrc ]] && source ~/.phpbrew/bashrc

phpbrew lookup-prefix ubuntu
Once set up, we install and load PHP 7:

phpbrew install 7.0 +default
phpbrew switch php-7.0
phpbrew use php-7.0
