# Use an official node image as the base image
FROM node:18-alpine

WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

RUN npm install

COPY . .

# Expose the port the app runs on
EXPOSE 5173

# Command to run the application
#CMD ["npm", "run", "dev", "--host"]
CMD ["npm", "run", "dev","--","--host","0.0.0.0"]