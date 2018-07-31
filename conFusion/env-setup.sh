#!/bin/sh

# Script to setup full-stack Web Development environment
sudo apt-get update

# Install git and setup PATH
sudo apt-get install git

# Install Node.js and node package manager (npm)
# Via Ubuntu repository
sudo apt-get install nodejs
sudo apt-get install npm
# Via Curl
sudo apt-get install curl
curl -sL https://deb.nodesource.com/setup_4.x | sudo -E bash -
sudo apt-get install -y nodejs

node -v
npm -v

# Setting up npm and package.json
npm search prompt
npm init
npm install prompt -S

# Installing and using the lessc Compiler
sudo npm install -g less
# lessc mystyles.less > mystyles.css

# Installing and setting up Bower
sudo npm install -g bower
bower init
# Installing Bower Components: Bootstrap, FontAwesome, JQuery, AngularJS
bower install
bower install angular-route -S
bower install angular-ui-router -S
bower install angular-resource -S

# Web tools: Grunt and Gulp
# GRUNT
sudo npm install -g grunt-cli
npm install grunt --save-de 
npm install grunt-contrib-jshint --save-dev
npm install jshint-stylish --save-dev
npm install time-grunt --save-dev
npm install jit-grunt --save-dev
npm install grunt-contrib-copy --save-dev
npm install grunt-contrib-clean --save-dev
npm install grunt-contrib-concat --save-dev
npm install grunt-contrib-cssmin --save-dev
npm install grunt-contrib-uglify --save-dev
npm install grunt-filerev --save-dev
npm install grunt-usemin --save-dev
npm install grunt-contrib-watch --save-dev
npm install grunt-contrib-connect --save-dev
# Commands: grunt, grunt serve

# GULP
sudo npm install -g gulp
npm install gulp --save-dev
npm install jshint gulp-jshint jshint-stylish gulp-imagemin gulp-concat gulp-uglify gulp-minify-css gulp-usemin gulp-cache gulp-changed gulp-rev gulp-rename gulp-notify  browser-sync del --save-dev
npm install gulp-ng-annotate --save-dev
# Commands: gulp, gulp watch

# Installing and configuring json-server
sudo npm install json-server -g
# json-server --watch db.json

# Setting up the Unit Test Environment
sudo npm install jasmine-core --save-dev
sudo npm install karma-cli -g
sudo npm install karma-jasmine --save-dev
sudo npm install phantomjs karma-phantomjs-launcher karma-chrome-launcher --save-dev
# Setting up Angular Mocks
bower install angular-mocks -S
# karma start karma.conf.js
# Setting up the E2E Test Environment
sudo npm install protractor -g
webdriver-manager update
# Command: protractor protractor.conf.js
