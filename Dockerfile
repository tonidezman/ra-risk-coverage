FROM node:4.4
RUN npm install --global bower grunt-cli

WORKDIR /src
COPY package.json .
RUN npm install

COPY . .
RUN mkdir -m 777 client/bower_components  
RUN bower install --allow-root
EXPOSE 9000
CMD ["grunt", "serve"]
