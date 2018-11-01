FROM node:10.12.0

ENV APPOPTICS_SERVICE_KEY ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:fake-key

WORKDIR /testapp

COPY package*.json ./
RUN npm install

COPY . .

CMD node -r appoptics-apm -r ./pre-esm.js -r esm index.js
