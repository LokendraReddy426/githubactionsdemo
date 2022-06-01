FROM node:alpine
WORKDIR /usr/app/src
COPY package*.json ./ 
RUN npm install ci --only=production
COPY src . 
CMD ["node", "index.js"]
