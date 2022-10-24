# The reason why I didn't use apache or nginx is I couldn't figure out how to point it to /opt/html in a programmatical way (without editing configuration files)

FROM node:18.11.0-bullseye-slim

RUN apt-get update && apt-get install curl -y

RUN useradd -mu 2022 berk
USER berk
WORKDIR /home/berk

COPY test.html /opt/html/

ENV PORT=8080
EXPOSE $PORT

ENTRYPOINT [ "npx", "http-server", "/opt/html" ]
