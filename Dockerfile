# Base image: Node.js with npm pre-installed
FROM node:18

# Working directory within the container
WORKDIR /app

# Clone the Git repository
RUN git clone https://github.com/iosiro/baserunner.git

# Navigate to the project directory
WORKDIR /app/baserunner

# Copy package.json and package-lock.json (if available)
COPY package*.json ./

# Install dependencies 
# --production flag prevents devDependencies from being installed (optional)
RUN npm ci --production

# Install webpack and webpack-cli globally
RUN npm install -g webpack webpack-cli

# Build the project
RUN npm run build

# Expose port 3000 for the application
EXPOSE 3000

# Start the application when the container runs
CMD ["npm", "start"]

