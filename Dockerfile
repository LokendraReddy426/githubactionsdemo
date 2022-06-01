FROM node:alpine
WORKDIR /usr/app/src
RUN pwd 
RUN ls -al
COPY package*.json ./ 
RUN npm install --production
COPY src . 
CMD ["node", "index.js"]
