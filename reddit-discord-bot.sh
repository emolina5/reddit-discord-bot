#!/bin/bash

# Get webhook URL from your discord server.
WEBHOOK_URL="YOUR DISCORD WEBHOOK URL HERE!"

# wget package needed!
wget https://www.reddit.com/r/YOUR SUBREDDIT GOES HERE/hot.json

img=$(grep -Po '"url_overridden_by_dest".*?[^\\]",' hot.json | head -3 | grep -o '".*"' | sed 's/"//g')
echo $img >> strfile
str=$(cat strfile)

IFS=' '
read -ra ADDR <<< "$str"
img=$(echo ${ADDR[1]})
# second image from reddit "hot", it's optional! :)
#img2=$(echo ${ADDR[3]}) 

# temporal files, don't worry about it
rm -rf strfile
rm -rf hot.json

POST="$img"
#POST2="$img2"

JSON="{\"content\": \"$POST\"}"
#JSON2="{\"content\": \"$POST2\"}"

curl -d "$JSON" -H "Content-Type: application/json" "$WEBHOOK_URL"
#curl -d "$JSON2" -H "Content-Type: application/json" "$WEBHOOK_URL"
