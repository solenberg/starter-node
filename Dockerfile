FROM node:12.11.1-alpine

WORKDIR /app/src

COPY package.json package-lock.json ./

RUN npm install

COPY . .

EXPOSE 3000

CMD ["npm", "start"]