FROM --platform=linux/ARM64 node:20-alpine
WORKDIR /app
COPY package*.json ./
RUN npm install --package-lock-only
RUN npm ci --omit=dev
COPY . .
ENV APP_PORT=3000
EXPOSE 3000
CMD ["npm", "start"]
