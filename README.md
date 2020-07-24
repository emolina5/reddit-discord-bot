# [BASH] REDDIT-DISCORD BOT
reddit-discord-bot . sh
----
This is a shell script that I use for a discord server to upload the best daily images from a subreddit. Nothing special, it just gets the data from a JSON, searches the parameter "url_overridden_by_dest" to get the image URL and sends it to the discord WEBHOOK.

### Installation:

reddit-discord-bot requires [wget](https://linux.die.net/man/1/wget) to run.
```sh
Debian:
$ sudo apt install wget -y
CentOS:
$ sudo yum install wget -y
```

### Run:
Just go to the .sh file and:
```sh
$ sudo chmod 744 reddit-discord-bot.sh
$ sudo ./reddit-discord-bot.sh // or // sudo bash reddit-discord-bot.sh
```
### Screenshots:
![alt text](https://cdn.discordapp.com/attachments/735983725262929986/735994328425693194/unknown.png "WEBHOOK")
![alt text](https://cdn.discordapp.com/attachments/735983725262929986/735994752796983336/unknown.png "BOT")


### License

It's free real estate!
