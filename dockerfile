FROM node:lst-alpine

WORKDIR /app

COPY package*.json ./

# Remove node_modules and package-lock.json if they exist
RUN rm -rf node_modules package-lock.json

RUN npm install

COPY . .

RUN npm run build

CMD ["npm", "run", "preview"]