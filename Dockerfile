FROM node:18
WORKDIR /app
COPY package*.json ./
COPY tsconfig.json ./

RUN npm install -g nodemon
RUN npm install

COPY . .

RUN npm run build

CMD [ "node", "dist/index.js" ]