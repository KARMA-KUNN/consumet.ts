 FROM node:20.18.1-alpine
WORKDIR /app
COPY package*.json yarn.lock ./
RUN npm install --legacy-peer-deps
COPY . .
RUN npm run build
EXPOSE 3000
ENV NODE_ENV=production
ENV HOST=0.0.0.0
CMD ["sh", "-c", "node $(ls dist/*.js | head -1)"]
