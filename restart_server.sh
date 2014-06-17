#!/bin/bash
 
echo "restarting"
kill $(cat tmp/pids/server.pid)
bundle
RAILS_ENV=production rake db:migrate assets:precompile
RAILS_ENV=production nohup rails s &
