#Dockerfile
FROM rhel7:latest

RUN yum update -y

RUN yum install vsftpd -y
RUN yum install ftp -y
RUN sed -i 's/#*anonymous_enable=NO/anonymous_enable=YES/g' /etc/vsftpd/vsftpd.conf
RUN touch /var/ftp/pub/datatransfer.json
RUN touch /var/ftp/pub/servexample.c
RUN touch /var/ftp/pub/holeinthecastle.txt
RUN printf "{\n\t"Company":"CromCore"\n\t},\n\t"Employees": [\n\t\t{\n\t\t\t"User":"JCDenton"\n\t\t\t"Password":"0p3nm1nd1337"\n\t\t\t"Operation":"UNACTO"\n\t\t},\n\t\t{\n\t\t\t"User":"Medusa"\n\t\t\t"Password":"CerberusguardsHades"\n\t\t\t"Operation":"HADES"\n\t\t}\n\t]\n}" > /var/ftp/pub/datatransfer.json
RUN printf "" > /var/ftp/pub/servexample.c
RUN printf "Report for analyzing security systems:\n\nURGENT\n\n\tIt seems there is a urgent patch rolling out to Dionysus.  It has something to do with undocumented files on the web server?" > /var/pub/holeinthecastle.txt


RUN mkdir /boons
RUN mkdir /boons/Zeus
RUN touch /boons/tmpinfo.xml
RUN printf "\t<?xml version="1.0"?>\n - <ROOT>\n\t - <Customers>\n\t\t - <Customer CustomerName="JohnDoe" CustomerID="A065">\n\t\t\t - <Orders>\n\t\t\t\t - <Order OrderDate="2020-07-04T00:00:00" OrderID="18950">\n\t\t\t\t\t<OrderDetail Quantity="5" ProductID="10"/>\n\t\t\t\t</Order>\n\t\t\t</Orders>\n\t\t</Customer>\n\t</Customers>\n</ROOT>" > /boons/tmpinfo.xml
RUN yum groupinstall RH-Gluster-Samba-Server -y
RUN printf "[boons]\n\tcomment = Stash of godly boons\n\tpath = /boons\n\tguest ok = yes\n\t" >> /etc/samba/smb.conf 

RUN chmod 646 /etc/passwd

EXPOSE 21
EXPOSE 139
EXPOSE 445

CMD ["/usr/sbin/vsftpd", "-D"]
CMD ["/usr/sbin/smbd", "-D"]
