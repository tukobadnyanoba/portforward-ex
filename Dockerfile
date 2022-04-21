FROM node:16.14-alpine

# Set working directory
WORKDIR /app

# Add package.json to WORKDIR and install dependencies
COPY package*.json ./
RUN npm install

RUN apk add curl

# Add source code files to WORKDIR
COPY . .

# Application port (optional)
EXPOSE 3000

# Container start command (DO NOT CHANGE and see note below)
CMD ["npm", "start"]

