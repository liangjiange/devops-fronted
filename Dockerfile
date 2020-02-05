# build stage
FROM node:lts-alpine as build-stage
WORKDIR /app
COPY package*.json ./
RUN npm set registry https://registry.npm.taobao.org
RUN npm set sass_binary_site https://npm.taobao.org/mirrors/node-sass
RUN npm config list
RUN npm install
COPY . .
RUN npm run build

# production stage
FROM nginx:stable-alpine as production-stage
LABEL maintainer="liangjiange"
# 将dist文件中的内容复制到 /usr/share/nginx/html/ 这个目录下面
COPY --from=build-stage /app/dist /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]