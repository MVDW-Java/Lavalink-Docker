FROM openjdk:24-bullseye


WORKDIR /app

COPY . .

RUN apt-get update
RUN apt-get install -y gettext

RUN wget https://github.com/lavalink-devs/Lavalink/releases/download/4.0.8/Lavalink.jar -O ./Lavalink.jar

CMD ["./launch.sh"]
