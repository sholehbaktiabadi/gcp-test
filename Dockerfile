# Create node image
FROM node:18-alpine3.16

# Create app directory
WORKDIR /app

# Copy file to /app directory
COPY . /app

# install and build
RUN  node -v && npm install && npm run build

# run service
CMD ["npm", "run", "start"]