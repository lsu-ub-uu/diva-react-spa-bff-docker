FROM node:18

COPY serverDependencies/package.json .

RUN npm install

COPY dist/main/webapp/ dist/

WORKDIR dist/

CMD ["node", "server.js"]
