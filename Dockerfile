FROM centos:latest

COPY fs /

RUN yum install -y nginx

RUN chmod 777 /etc/nginx/nginx.conf && chmod 777 /var/run && chmod 777 /etc/nginx/conf.d/default.conf && chmod 777 /var/log/nginx && rm -rf /var/log/nginx/error.log && rm -rf /var/log/nginx/access.log && chmod 777 /var/cache/nginx

CMD ["nginx"]

EXPOSE 8080
