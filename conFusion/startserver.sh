#!/bin/sh

# Script to start json-server
json-server --watch json-server/db.json --static dist --port 3100

# Command to use browser-sync
#./node_modules/browser-sync/bin/browser-sync.js start \ 
#	--files=dist/**/* \
#    --proxy localhost:3100