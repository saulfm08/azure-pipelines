FROM node:14.14.0-alpine

# Set working directory.
WORKDIR /usr/src/app

# Copy necessay files to build.
COPY package.json ./
COPY .npmrc ./.npmrc
COPY ci/scripts/entrypoint.sh ./entrypoint.sh

# Run NPM Install
RUN npm install

# Bundle files
COPY . .

RUN chmod +x ./entrypoint.sh
ENTRYPOINT ["./entrypoint.sh"]

EXPOSE 3000

CMD [ "npm", "start" ]