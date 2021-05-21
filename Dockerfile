FROM openjdk:11

RUN mkdir /app

WORKDIR /app

CMD java helloWorld
