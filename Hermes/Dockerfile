#Dockerfile
FROM rhel7:latest

RUN yum update -y

RUN yum install vsftpd -y
RUN yum install ftp -y
RUN sed -i 's/#*anonymous_enable=NO/anonymous_enable=YES/g' /etc/vsftpd/vsftpd.conf
RUN touch /var/ftp/pub/datatransfer.json
RUN touch /var/ftp/pub/servexample.c
RUN touch /var/ftp/pub/holeinthecastle.txt



RUN mkdir /boons
RUN mkdir /boons/Zeus
RUN touch /boons/tmpinfo.xml
RUN yum groupinstall RH-Gluster-Samba-Server -y
RUN printf "[boons]\n\tcomment = Stash of godly boons\n\tpath = /boons\n\tguest ok = yes\n\t" >> /etc/samba/smb.conf 
RUN printf ""

RUN chmod 646 /etc/passwd

EXPOSE 21
EXPOSE 139
EXPOSE 445

CMD ["/usr/sbin/vsftpd", "-D"]
CMD ["/usr/sbin/smbd", "-D"]
