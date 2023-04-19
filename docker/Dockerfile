FROM cora-nginx as builder

ARG BASENAME
ENV BASENAME=$BASENAME

RUN git clone https://github.com/lsu-ub-uu/diva-react-spa-bff.git

WORKDIR diva-react-spa-bff

RUN git status

RUN git pull

RUN git log --name-status HEAD^..HEAD

RUN npm install

RUN npm run build

COPY --from=builder /diva-react-spa-bff/dist /usr/share/nginx/html