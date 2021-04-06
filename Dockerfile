FROM node:12-alpine

ENV PORT 3000

# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Installing dependencies
COPY package*.json /usr/src/app/
RUN yarn install

# Copying source files
ADD . /usr/src/app

# Building app
RUN yarn build
EXPOSE 3000 80

# Running the app
CMD ["yarn", "start"]
