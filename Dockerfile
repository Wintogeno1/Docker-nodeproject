FROM node:13-alpine

# ENV MONGO_DB_USERNAME=admin \
#     MONGO_DB_PWD=password

# RUN mkdir -p /home/app

# RUN npm install

# COPY . /home/app

# CMD ["node", "/home/app/server.js"]

ARG MONGO_DB_USERNAME
ARG MONGO_DB_PWD

ENV MONGO_DB_USERNAME=${MONGO_DB_USERNAME} \
    MONGO_DB_PWD=${MONGO_DB_PWD}

RUN mkdir -p /home/app

RUN npm install

COPY . /home/app

CMD ["node", "server.js"]