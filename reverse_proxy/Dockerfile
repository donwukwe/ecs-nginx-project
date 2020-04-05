FROM nginx:latest

COPY reverse_proxy.conf /etc/nginx/nginx.conf
COPY htpasswd           /etc/nginx/.htpasswd
COPY cert.crt           /etc/nginx/cert.crt
COPY cert.key           /etc/nginx/cert.key
COPY dhparam.pem        /etc/nginx/dhparam/dhparam.pem
