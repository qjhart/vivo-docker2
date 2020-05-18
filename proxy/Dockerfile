FROM node:10

RUN mkdir proxy
WORKDIR /proxy

COPY package.json .
COPY package-lock.json .
RUN npm install --production

COPY assets assets
COPY index.js .
COPY cas.js .

CMD node index.js