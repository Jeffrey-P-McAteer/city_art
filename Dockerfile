# This file tells Docker how to build a server
FROM nginx

COPY ./nginx.conf /etc/nginx/nginx.conf

CMD ["nginx", "-g", "daemon off;"]
