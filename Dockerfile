# develop stage
FROM node:12.18-alpine3.9 as dependency-stage
RUN mkdir -p /app

WORKDIR /app
# ARG PORT 
# ARG HOST 

COPY package*.json ./
RUN npm install
COPY ./ ./
RUN npm run build

# production stage
# FROM nginx:1.17-alpine as production-stage
# WORKDIR /usr/share/nginx/html
# COPY --from=dependency-stage /app/.nuxt ./
# RUN rm /etc/nginx/conf.d/default.conf
# COPY .nginx/default.conf /etc/nginx/conf.d

EXPOSE 3000

ENV NUXT_HOST=0.0.0.0
ENV NUXT_PORT=3000

# CMD ["npm", "start"]