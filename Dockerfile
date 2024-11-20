# Base image
FROM node:16

# Set working directory
WORKDIR /usr/src/app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application
COPY . .

# Expose the port your app uses (if necessary)
EXPOSE 3000

# Command to start the application
CMD ["npm", "start"]
