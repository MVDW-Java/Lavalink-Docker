#!/bin/sh

function getTemplate() {
    envsubst < ./$1
}

function generateTemplate() {
    getTemplate ./lavalink.yml > ./application.yml
}

generateTemplate

java -jar Lavalink.jar
