FROM node:lts

WORKDIR /usr/src/app

COPY package.json .
COPY tsconfig.json .

RUN npm run build

EXPOSE ${PORT}

CMD ["npm", "start"]