#! /bin/bash
while true
do
    SERVER_UPTIME=$(uptime)
    # Terminal text
    echo "This a 24/7 Minecraft Server Please Do not Shutoff github codespaces"
    echo "current uptime: $SERVER_UPTIME"
    # Minecraft Text
    echo "Injecting text into minecraft server"
    ./server_command.sh "say This a 24/7 Minecraft Server Please Do not Shutoff github codespaces"
    ./server_command.sh "say current uptime: $SERVER_UPTIME"
    # Backup Notice
    echo "Saving World Right Now!"
    ./server_command.sh "say Doing Backup Right Now!"
    ./server_command.sh "save-all"
    ./server_command.sh "say Save Done!"
    echo "Saving Changes to git!"
    ./server_command.sh "say Saving Changes to git!"
    git add . && git commit -a -m "Cron save" && git push
    sleep 2h
done