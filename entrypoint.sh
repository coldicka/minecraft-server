#!/bin/sh

#Default configuration
#https://de.minecraft.wiki/w/Server.properties
CONFIG_FILE="./server.properties"

# Start the server
# java -Xmx4G -Xms4G -jar minecraft_server.26.1.2.jar nogui
#https://www.minecraft.net/de-de/download/server
exec java -Xmx4G -Xms1G -jar mcserver.jar --nogui