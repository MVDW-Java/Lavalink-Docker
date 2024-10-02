#!/bin/sh
set -ae
. ./settings.env

function printHelp() {
   echo "Lavalink docker image creator tool"
   echo
   echo "Syntax: ./build.sh [option]"
   echo
   echo "options:"
   echo "  generate     :    Generates all files ready for building the image."
   echo "  build        :    Build docker image."
   echo "  all          :    Do both generation and building."
   echo "  help         :    Display this help message."
   echo
}

function getTemplate() {
    envsubst < ./template/$1
}

function generateTemplate() {
    mkdir -p ./out
    getTemplate Dockerfile > ./out/Dockerfile
    getTemplate lavalink_config.yml > ./out/application.yml
    echo "Templates generated in ./out directory."
}

function buildImage() {
    docker build -t lavalink ./out
    echo "Docker image built with tag 'lavalink'."
}

# Option handling
case "$1" in
    generate)
        generateTemplate
        ;;
    build)
        buildImage
        ;;
    all)
        generateTemplate
        buildImage
        ;;
    help|*)
        printHelp
        ;;
esac
