FROM amazonlinux:latest

RUN cat /etc/resolv.conf

RUN echo  " "

#install
RUN yum install httpd -y

# configure
RUN echo "Jenkins Docker Build and Publish "



CMD ["sh", "-c", "tail -f /dev/null"]

CMD ["/usr/sbin/httpd","-D","FOREGROUND"]


EXPOSE 80
