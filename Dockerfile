# Use lightweight official Node runtime
FROM node:20-alpine

WORKDIR /usr/src/app

# Install dependencies first to utilize layer caching
COPY package*.json ./
RUN npm install --omit=dev

# Copy application code
COPY . .

EXPOSE 3000

CMD ["node", "index.js"]