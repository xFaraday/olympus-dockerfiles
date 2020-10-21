#Dockerfile
FROM rhel7:latest

RUN yum update -y

RUN yum install openssh-server -y
RUN mkdir /var/run/sshd
RUN echo 'root:masterhackerpassword5647' | chpasswd
RUN sed -i 's\#*PermitRootLogin prohibit-password/PermitRootLogin yes/g' /etc/ssh/sshd_config
RUN sed -i 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' /etc/pam.d/sshd

RUN yum install httpd -y
RUN yum install php-fpm -y
RUN touch /var/www/html/index.php
RUN printf "<html>\n\t<head>\n\t\t<title>User browser</title>\n\t</head>\n\t<body>\n\t\t<h1>Hello guys!</h1>\n\n\t</body>\n</html>" > /var/www/html/index.php
RUN touch /etc/httpd/conf.d/vhosts.conf
RUN printf "<VirtualHost *:80>\n\tDocumentRoot /var/www/html/\n</VirtualHost>" > /etc/httpd/conf.d/vhosts.conf


RUN mkdir /boons
RUN mkdir /boons/Zeus
RUN touch /boons/tmpinfo.xml
RUN yum groupinstall RH-Gluster-Samba-Server -y
RUN printf "[boons]\n\tcomment = Stash of godly boons\n\tpath = /boons\n\tguest ok = yes\n\t" >> /etc/samba/smb.conf

EXPOSE 22
EXPOSE 80
EXPOSE 139
EXPOSE 445

CMD ["/usr/sbin/sshd", "-D"]
CMD ["/usr/sbin/httpd", "-D"]
CMD ["/usr/sbin/smbd", "-D"]
