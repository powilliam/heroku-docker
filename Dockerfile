FROM node:lts

WORKDIR /usr/src/app

COPY . .

RUN npm install

RUN npm run build

EXPOSE ${PORT}

CMD ["npm", "start"]