FROM node:12-alpine
WORKDIR /app
COPY package.json package-lock.json ./
RUN npm install
# RUN npm install --production
COPY . .
CMD ["node", "src/index.js"]