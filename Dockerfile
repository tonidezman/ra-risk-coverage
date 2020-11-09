FROM node:4.2.3

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install --global bower
RUN npm install --global grunt-cli
RUN npm install --prefer-offline

COPY bower.json ./
RUN bower install --allow-root

COPY ./ ./

EXPOSE 8005
CMD ["grunt", "serve"]
