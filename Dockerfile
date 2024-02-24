# Use the official Node.js image as the base
FROM node:21-alpine3.18

# Create a directory for your app
RUN mkdir /app
WORKDIR /app

# Copy package.json and package-lock.json to the container
COPY package.json /app
COPY package-lock.json /app

# Install dependencies
RUN npm install

# Copy the rest of your application files
COPY . /app

# Expose the port your application will listen on (adjust as needed)
EXPOSE 5000

# Start your application using npm start
CMD ["npm", "start"]
