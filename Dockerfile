FROM node:16

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
# Wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./

RUN npm Install
# If you are building your code for production
# RUN npm ci --only=production

# Bundle app source
COPY . .

# Expose required port
EXPOSE 8080

CMD [ "node", "server.js" ]