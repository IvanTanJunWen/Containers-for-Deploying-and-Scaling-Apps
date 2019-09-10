# select the base image
FROM node:latest

LABEL name="northwindapp"
LABEL maintainer="Ivan"

ENV DB_HOST=mydb
ENV DB_PORT=3306
ENV APP_PORT=3000
ENV APP_DIR=/app

WORKDIR ${APP_DIR}

# Add everything: ADD . .

ADD package.json .
ADD package-lock.json .
ADD main.js .
ADD config config
ADD public public
ADD views views

# INSTALL DEPENDENCY
RUN npm install 

# Expose the port 3000
EXPOSE ${APP_PORT}

# Start the App
ENTRYPOINT [ "node","main.js" ]

