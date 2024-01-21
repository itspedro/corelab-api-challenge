FROM node:16.15.0

WORKDIR /app

COPY package.json .

RUN npm install

COPY . .

RUN npm run prisma:generate

RUN npm run tsc

EXPOSE 8080

ENV ADDRESS=0.0.0.0 PORT=8080

CMD ["npm", "start"]
