FROM ubuntu:latest

RUN apt update && apt install -y \
x11-apps \
xauth \
openjdk-17-jre \
&& rm -rf /var/lib/at/lists/*

WORKDIR /calc

COPY . /calc


ENV DISPLAY=host.docker.internal:0

CMD [ "java", "-jar", "calc.jar" ]