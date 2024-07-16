FROM node:14-alpine as test
WORKDIR /app
COPY package.json package-lock.json* ./
RUN npm ci
COPY . .
RUN npm test

# Stage 2: Production
FROM node:14-alpine
WORKDIR /app
COPY --from=test /app/app.js .
CMD ["node", "app.js"]