FROM nginx:1.21.3
ENV TZ=Asia/Tokyo
COPY ./nginx/nginx.conf  /etc/nginx/nginx.conf
RUN apt-get update

EXPOSE 80	443