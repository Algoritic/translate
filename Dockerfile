# Use the official Node.js 16 image as a parent image
FROM node:20

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy the current directory contents into the container at /usr/src/app
COPY . .

# Install any dependencies
RUN npm install

# Explicitly install Angular CLI globally
RUN npm install -g @angular/cli
# Explicitly install @angular-devkit/build-angular
RUN npm install @angular-devkit/build-angular

# Make port 4200 available to the world outside this container
EXPOSE 4200

# Run the app when the container launches
CMD ["npm", "start"]