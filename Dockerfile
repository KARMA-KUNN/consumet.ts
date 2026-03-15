FROM node:20.18.1-alpine
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
RUN npm run build
EXPOSE 3000
ENV PORT=3000
ENV NODE_ENV=production
CMD ["node", "dist/main.js"]
