FROM openjdk:24-bullseye

WORKDIR /app

COPY . .

RUN wget https://github.com/lavalink-devs/Lavalink/releases/download/4.0.8/Lavalink.jar -O ./Lavalink.jar

CMD ["./launch.sh"]
