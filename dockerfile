# Use an official Node.js 16 image as the base image
FROM node:16

# Set the working directory in the container to /app
WORKDIR /app

# Copy the package.json and package-lock.json to the container
COPY package*.json ./

# Install dependencies
RUN npm ci

# Copy the rest of the files to the container
COPY . .

# Specify the command to run when the container starts
CMD [ "npm", "run", "dev" ]
