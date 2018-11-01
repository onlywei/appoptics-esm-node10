FROM node:10.12.0

ENV APPOPTICS_SERVICE_KEY ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:fake-key

WORKDIR /testapp

COPY package*.json ./
RUN npm install

COPY index.js .

CMD node -r appoptics-apm -r esm index.js
