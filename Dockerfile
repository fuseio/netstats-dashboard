FROM node:22.23.4-alpine

# Specify app folder
WORKDIR /app

# Specify build args
ARG PAGE_TITLE

COPY package.json .

# Install dependencies
RUN npm install

RUN npm install grunt-cli -g

# Copy all files
COPY . .

RUN grunt

# Run!
CMD ["npm", "start"]
