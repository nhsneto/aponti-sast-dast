FROM node:24-alpine3.23
ENV NODE_ENV=production

WORKDIR /app
COPY package.json package-lock.json ./
RUN npm ci --omit=dev && npm cache clean --force
COPY . .

EXPOSE 3000
CMD ["node", "server.js"]
