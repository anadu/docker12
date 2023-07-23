FROM almalinux
RUN yum install nginx -y
RUN yum install unzip -y
#RUN rm -rf /usr/share/nginx/html/index.html
#COPY qi /usr/share/nginx/html
ADD https://registry.terraform.io/providers/hashicorp/aws/latest/docs /tmp/
ADD apache-tomcat-10.1.11-embed.zip /tmp/
ADD apache-tomcat-10.1.11-embed.tar.gz /tmp/
CMD ["nginx","-g", "daemon off;"]
