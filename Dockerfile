FROM nginx:1.21.3
COPY ./nginx/nginx.conf  /etc/nginx/nginx.conf
RUN apt-get update