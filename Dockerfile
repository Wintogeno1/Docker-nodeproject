FROM node:13-alpine

ENV MONGO_DB_USERNAME=admin \
    MONGO_DB_PWD=password

# Set the working directory in the container
WORKDIR /home/app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install app dependencies
RUN npm install

# Copy the rest of the application code to the working directory
COPY . .

# Expose the port on which your Node.js app will run (if applicable)
EXPOSE 3000

# Command to start your Node.js app

CMD ["node","server.js"]