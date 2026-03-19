FROM node:18-alpine
WORKDIR /app
COPY package*.json ./
RUN npm install --omit=dev
COPY app.js ./
COPY utils/ ./utils/
RUN mkdir -p /app/www
EXPOSE 1337
CMD ["node", "app.js"]
