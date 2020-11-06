FROM node:4.2.3

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install --global bower
RUN npm install --global grunt-cli
RUN npm install || echo "I failed :)"
RUN bower install || echo "don't warry be happy "

COPY ./ ./

EXPOSE 8005
CMD ["grunt", "serve"]
