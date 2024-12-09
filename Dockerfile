# Author : Vongkeo KSV

# Pull the base image 
FROM node:20.15.0 as build-stage

# set working directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy all files
COPY . .

#expose port 3000
EXPOSE 3000

# start nginx in the foreground
CMD ["npm", "run", "dev"]