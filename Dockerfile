FROM node:lts

COPY ["package.json", "package-lock.json", "/usr/src/"]

WORKDIR /usr/src/

RUN npm install

COPY [".", "/usr/src/"]

EXPOSE 1080

CMD ["node", "server.js"]