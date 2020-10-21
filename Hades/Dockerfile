#Dockerfile
FROM rhel7:latest

RUN yum update -y

RUN yum install openssh-server -y
RUN mkdir /var/run/sshd
RUN echo 'root:masterhackerpassword5647' | chpasswd
RUN adduser cerberus
RUN echo 'cerberus:pieceofmeat' | chpasswd
RUN adduser JCDenton
RUN echo 'JCDenton:0p3nm1nd1337' | chpasswd

RUN sed -i 's\#*PermitRootLogin prohibit-password/PermitRootLogin yes/g' /etc/ssh/sshd_config
RUN sed -i 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' /etc/pam.d/sshd

RUN yum install httpd -y
RUN touch /var/www/html/index.html
RUN printf "<html>\n\t<head>\n\t\t<title>User browser</title>\n\t</head>\n\t<body>\n\t\t<h1>Hello guys!</h1>\n\n\t</body>\n</html>" > /var/www/html/index.html
RUN touch /etc/httpd/conf.d/vhosts.conf
RUN printf "<VirtualHost *:8080>\n\tDocumentRoot /var/www/html/\n</VirtualHost>" > /etc/httpd/conf.d/vhosts.conf


EXPOSE 22
EXPOSE 80

CMD ["/usr/sbin/sshd", "-D"]
CMD ["/usr/sbin/httpd", "-D"]
