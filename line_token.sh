#!/bin/bash

echo "===== Begin to set new ENV ======"

line_response=$(curl --request POST \
  --url https://api.line.me/v2/oauth/accessToken \
  --header 'Accept: */*' \
  --header 'Cache-Control: no-cache' \
  --header 'Connection: keep-alive' \
  --header 'Content-Type: application/x-www-form-urlencoded' \
  --header 'Host: api.line.me' \
  --data "grant_type=client_credentials&client_id=$LINE_CHID&client_secret=$LINE_SECRET_ID" | jq -r '.access_token')

echo $line_response

export LINE_ACCESSTOKEN=$line_response

pm2 reload server --update-env
