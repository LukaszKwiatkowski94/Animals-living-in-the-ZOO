FROM node:18-alpine

# Create app directory
WORKDIR /app

# Install Python3 and compilers for node-gyp
RUN apk add --no-cache python3 make g++

# Install app dependencies
COPY package.json package-lock.json ./

# Install dependencies
RUN npm install

# Bundle app source
COPY . .

# Build the app
EXPOSE 8080

# Start the app
CMD ["npm", "run", "serve"]
