#!/bin/bash

# copy env to cronenv
env >> /etc/environment

# Start the run once job.
echo "Docker container has been started"

# Setup a cron schedule
echo "0 20 * * 6 /usr/src/app/line_token.sh > /var/log/cron.log 2>&1" > scheduler.txt
# echo "*/5 * * * * curl -X POST --header 'Content-Type: application/json' 'http://localhost:3000/api/richmenu/update-richmenu'" >> scheduler.txt
# echo "* * * * * curl -X POST --header 'Content-Type: application/x-www-form-urlencoded' -d 'richmenuName=MEMBER' 'http://localhost:3000/api/user-richmenu/update-all'" >> scheduler.txt

# run crontab
crontab scheduler.txt
crond

touch /var/log/cron.log
ln -sf /proc/1/fd/1 /var/log/cron.log

echo "===== Begin to set new ENV ======"

line_response=$(curl --request POST \
 --url https://api.line.me/v2/oauth/accessToken \
 --header 'Accept: */*' \
 --header 'Cache-Control: no-cache' \
 --header 'Connection: keep-alive' \
 --header 'Content-Type: application/x-www-form-urlencoded' \
 --header 'Host: api.line.me' \
 --data "grant_type=client_credentials&client_id=$LINE_CHID&client_secret=$LINE_SECRET_ID" | jq -r '.access_token')

export LINE_ACCESSTOKEN=$line_response

# set default .env to .bashrc
#echo "export LINE_ACCESSTOKEN=$line_response" >> ~/.bashrc

# run pm2
pm2-runtime server/server.js
