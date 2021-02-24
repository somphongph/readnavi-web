# production stage
FROM node:12.18-alpine3.9 as production-stage
RUN mkdir -p /app

WORKDIR /app

COPY package*.json ./
RUN npm install
COPY ./ ./
RUN npm run build

ENV NUXT_HOST=0.0.0.0
ENV NUXT_PORT=80

EXPOSE 80

CMD ["npm", "run", "start"]