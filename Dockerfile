FROM node:lts-alpine

# Create app directory
WORKDIR /data/project

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./

RUN npm install
# If you are building your code for production
# RUN npm ci --only=production


RUN npm i nodemon -g
# Bundle app source
#COPY . .

CMD [ "nodemon", "init.js" ]