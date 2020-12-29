#!/bin/bash

rm -f /myapp/tmp/pids/server.pid

# Start the server
bundle exec rails server -p 3000 -b 0