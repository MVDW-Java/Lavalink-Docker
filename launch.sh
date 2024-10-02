#!/bin/sh

envsubst < ./lavalink.yml > ./application.yml

java -jar Lavalink.jar
