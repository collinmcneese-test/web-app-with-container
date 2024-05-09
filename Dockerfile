# Package and run the application, using node:alpine as the base image
FROM node:alpine

# Set the working directory
WORKDIR /usr/src/app

# Copy the package.json and package-lock.json files to the working directory
COPY package*.json ./

# Install the application dependencies
RUN npm install

# Copy the application source code to the working directory
COPY . .

# Expose the port the application runs on
EXPOSE 3000

# Run the application
CMD ["npm", "start"]
