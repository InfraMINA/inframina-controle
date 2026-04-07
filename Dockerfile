# Dockerfile for Node.js Serve Setup

# Use the official Node.js image.
FROM node:14

# Set the working directory inside the container.
WORKDIR /usr/src/app

# Copy package.json and package-lock.json for npm install.
COPY package*.json ./

# Install the application dependencies.
RUN npm install

# Copy the rest of the application code.
COPY . .

# Expose port 3000.
EXPOSE 3000

# Command to run the application.
CMD [ "npm", "start" ]
