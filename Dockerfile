FROM node:18-alpine
ENV NODE_ENV=production

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

EXPOSE 8000

CMD ["npm", "start"]
