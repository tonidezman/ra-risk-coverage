FROM node:4.4
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install --global bower
RUN npm install --global grunt-cli
COPY . .
RUN ["npm", "install"]
RUN ["bower", "install"]
EXPOSE 8005
CMD ["grunt", "serve"]
