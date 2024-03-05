FROM nginx
COPY nginx.conf /etc/nginx/nginx.conf
COPY proxy_params /etc/nginx/proxy_params
COPY ssl_params /etc/nginx/ssl_params
COPY website /usr/share/nginx/html