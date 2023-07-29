From node:15.4

WORKDIR /app

COPY package*.json .
RUN npm install
COPY . .
RUN npm run build

FROM nginx:1.19
