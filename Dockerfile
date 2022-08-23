# Specify a base image
FROM node:alpine

# Work Directory
WORKDIR /usr/app

COPY ./package.json ./

# Intsall some dependencies
RUN npm install

# COPY files from local to container
COPY ./ ./


# Default Command
CMD ["npm", "start"]