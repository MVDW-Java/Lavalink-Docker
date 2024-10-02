# Lavalink Docker
Docker image of my local lavalink instance

## Build:
Run this command in the current directory to build the image:
```sh
sudo docker build -t lavalink .
```

## deploy:
run this command to deploy the image that you just build:
```sh
docker run --name=lavalink -d lavalink
```

## arguments:
to add arguments you replace variables in `application.yml` with ${variable_name}

for example replace `password: "youshallnotpass"` with `password: ${LAVALINK_PASSWORD}` and when deploying add `-e "LAVALINK_PASSWORD=youshallnotpass"` to the command.

Full deployment command will be `docker run --name=lavalink -e "LAVALINK_PASSWORD=youshallnotpass" -d lavalink`
