# Use an official Node.js 16 image as the base image
FROM node:14

# Set the working directory in the container to /app
WORKDIR /app

# Copy the package.json and package-lock.json to the container
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the files to the container
COPY . .

# Expose port 3000
EXPOSE 3000

# Specify the command to run when the container starts
CMD [ "npm", "run", "dev" ]
