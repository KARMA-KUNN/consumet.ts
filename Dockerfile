FROM node:20-alpine
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
RUN npm run build && ls dist/
ENV PORT=3000
ENV HOST=0.0.0.0
EXPOSE 3000
CMD ["node", "dist/index.js"]
