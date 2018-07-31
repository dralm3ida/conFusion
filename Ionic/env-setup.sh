#!/bin/sh

# Script to setup full-stack Web Development environment - Ionic framework for Mobile device applications
sudo npm install cordova ionic -g
# Scaffold out a new Ionic project
ionic start conFusion sidemenu
ionic serve
# Starts the Ionic server
ionic serve --lab

# Setting up a static web server
npm install json-server -g
json-server --watch db.json

