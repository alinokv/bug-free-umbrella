
FROM ubuntu:20.04


RUN apt-get update && apt-get install -y \
    x11-apps \
    libx11-6 \
    libglib2.0-0 \
    && apt-get clean


RUN apt-get install -y x11-apps

ENV DISPLAY=:0

CMD ["xclock"]
