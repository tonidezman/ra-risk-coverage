FROM node:4.4
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install --global bower
RUN npm install --global grunt-cli
<<<<<<< HEAD
RUN npm install --prefer-offline

COPY bower.json ./
RUN bower install --allow-root

COPY ./ ./

EXPOSE 8005
=======
COPY . .
RUN ["npm", "install"]
RUN ["bower", "install", "--allow-root"]
EXPOSE 9000
>>>>>>> db50cf72981c856eac4ce3c1fa5282ce0b028f26
CMD ["grunt", "serve"]
