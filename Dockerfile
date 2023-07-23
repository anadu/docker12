FROM almalinux
RUN yum install nginx -y
#RUN rm -rf /usr/share/nginx/html/index.html
#COPY qi /usr/share/nginx/html
ADD https://registry.terraform.io/providers/hashicorp/aws/latest/docs /tmp/
CMD ["nginx","-g", "daemon off;"]
