# Minecraft Server

This repository contains everything required to set up, run, and maintain a personal Minecraft server. It includes installation instructions, configuration guidance, server startup procedures, and backup management workflows. Whether you're setting up a server for the first time or are an experienced administrator, this README serves as a convenient reference for deploying and managing your server environment.

## Table of contents

* [Minecraft Server](#minecraft-server)
* [Quickstart](#quickstart)
  * [Run the server](#run-the-server)
* [Usage](#usage)
* [Testing](#testing)

## Quickstart

If you're following setup instructions for a Minecraft server project, the sequence would generally look like this:

```
# Navigate to the parent directory where you want the project
cd /path/to/your/projects

# Clone the repository from GitHub
git clone https://github.com/coldicka/minecraft-server.git

# Enter the cloned project directory
cd minecraft-server
```

A few prerequisites:

* Docker Engine should be installed and running.
* Git should be installed (git --version).
* You should be comfortable using a terminal/shell and basic Docker concepts.

### Run the server

You can start the server directly with a simple Docker Compose command.

```bash
$ docker compose up -d
```

* Download the minecraf installer [quote](https://www.minecraft.net/de-de/download)
* Start the game and log in using a Java Minecraft client.
* Select `Multiplayer`
* Click `Direct connection`
* Enter the server's IP address and port

## Usage

### adjust the server configuration

Minecraft uses some configuration [settings](https://minecraft.wiki/w/Server.properties) that are already set as defaults. If you want to change any of them, then

* Open the **server.properties** file and change the default configuration values there.

## Testing

This is a set of instructions for testing a Minecraft server using either a Minecraft client or the Python-based MCStatus tool.

**What it does:**

* Connect to your server with a Java Edition Minecraft client to verify it works.
* Create a Python virtual environment and install the MCStatus packag.

```bash
$ sudo apt update
$ sudo apt install python3-venv -y
$ python -m venv <venv-name>
$ source ~/path/to/project/<venv-name>/bin/activate

# Install MCStatus
$ python3 -m pip install mcstatus
```
  
* Open the **server.properties** file and change the default configuration value:

```bash
enable-query=true
```

* Run tests

```bash
# Check server latency/online
mcstatus <ip.of.your.host> ping
# Check version, player count
mcstatus <ip.of.your.host> status
# Detailed info if query enabled
mcstatus <ip.of.your.host> query
# Outputs all the server status information in JSON format
mcstatus <ip.of.your.host> json
```
