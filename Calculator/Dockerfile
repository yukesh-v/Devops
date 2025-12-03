FROM node:24-alpine3.21

WORKDIR /app

COPY package*.json .

COPY *.js .

COPY *.html .

RUN npm install 

EXPOSE 4000

CMD ["node", "index.js"]

