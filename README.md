# Minecraft Server

This repository uses the Minecraft Server version 26.1.2 and contains all the files and instructions needed to set up, run, and manage a personal Minecraft server. It includes steps for installation, configuration, running the server, and managing backups. This README provides a quick reference for both new and experienced server administrators.

## Table of contents

* [Minecraft Server](#minecraft-server)
* [Quickstart](#quickstart)
  * [Run the server](#run-the-server)
* [Usage](#usage)
* [Testing](#testing)

## Quickstart

It is expected that you have Docker Engine installed on your machine.
However, it is very important that you have some knowledge of containerization and the shell.

* Open a terminal and navigate to the directory where you want to clone your Minecraft
* clone the repository direct on the github

```bash
$ git clone https://github.com/coldicka/minecraft-server.git
```

* Change Directory `cd minecraft-server`
* Copy the example environment `example.env` file to the same directory: `cp example.env .env`.
* edit the `.env` file and set your server-IP

### Run the server

The server can be started directly with a simple docker compose command

```bash
$ docker compose up
```

* Download the minecraf installer `https://www.minecraft.net/de-de/download`
* tart the game and connect to your server using a Java Minecraft client.
* Then go to Multiplayer
* Direct connection and enter the IP address and port ti connect to the server

## Usage

### adjust the server configuration

You can see the default server properties:  `https://minecraft.wiki/w/Server.properties`.
You can adjust it.

* Open the file .env and change default configuration values there.
* Open the compose.yaml file. Scroll down to the `environment` section and add the variables that were modified or added in the .envi-configuration file.

## Testing

For testing, you can:
* Start the minecraft and connect to your server using a Java Minecraft client.
* Use the Python module: https://github.com/py-mine/mcstatus
  * Set up a virtual environment
  ```bash
        $ sudo apt update
        $ sudo apt install python3-venv -y
        $ python -m venv <venv-name>
        $ source ~/path/to/project/<venv-name>/bin/activate
    ```
  * Install MCStatus
    ```bash
        $ python3 -m pip install mcstatus
    ```
  * Enable server query

      Open the server.properties file and set:

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
