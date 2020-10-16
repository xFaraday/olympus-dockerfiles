#Dockerfile
FROM rhel7:latest

RUN yum update -y

RUN yum install openssh-server -y
RUN mkdir /var/run/sshd
RUN echo 'root:masterhackerpassword5647' | chpasswd
RUN sed -i 's\#*PermitRootLogin prohibit-password/PermitRootLogin yes/g' /etc/ssh/sshd_config
RUN sed -i 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' /etc/pam.d/sshd

RUN yum install httpd -y

EXPOSE 22
EXPOSE 80

CMD ["/usr/sbin/sshd", "-D"]
CMD ["/usr/sbin/httpd", "-D"]
