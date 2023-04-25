FROM node:18
ARG BASENAME
ARG CORA_API_URL
ENV BASENAME=$BASENAME
ENV CORA_API_URL=$CORA_API_URL

# RUN apk add git nodejs npm

# RUN npm install npm@latest -g

RUN git clone https://github.com/lsu-ub-uu/diva-react-spa-bff.git

WORKDIR diva-react-spa-bff

RUN git status

RUN git pull

RUN git log --name-status HEAD^..HEAD

RUN npm install

RUN npm run build

WORKDIR dist

COPY . .

CMD [ "node", "server.js" ]