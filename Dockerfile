FROM node:alpine

WORKDIR /usr/app

# Copy files from local fs to build context
COPY ./package.json ./
RUN npm install
COPY ./ ./

CMD ["npm", "start"]