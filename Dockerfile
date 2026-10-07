FROM node:22-alpine AS client-builder

WORKDIR /app/client

COPY client/package*.json ./

RUN npm ci

COPY client/ ./

RUN npm run build

# Stage 2
FROM node:22-alpine

WORKDIR /app

ENV NODE_ENV=production

COPY package*.json ./
RUN npm ci --omit=dev

COPY index.js ./
COPY routes ./routes
COPY models ./models

COPY --from=client-builder /app/client/dist ./client/dist

EXPOSE 5000

CMD ["node", "index.js"]
