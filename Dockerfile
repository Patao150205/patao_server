FROM nginx
COPY ./nginx/nginx.conf  /etc/nginx/nginx.conf
RUN apt-get update