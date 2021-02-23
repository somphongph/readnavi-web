# develop stage
FROM node:12.18-alpine3.9 as dependency-stage
RUN mkdir -p /app

WORKDIR /app
# ARG PORT 
# ARG HOST 

COPY package*.json ./
RUN npm install --silent
COPY ./ ./
RUN npm run generate

# production stage
FROM nginx:1.17-alpine as production-stage
COPY --from=dependency-stage /app/dist /usr/share/nginx/html
# RUN rm /etc/nginx/conf.d/default.conf
# COPY nginx/default.conf /etc/nginx/conf.d

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]