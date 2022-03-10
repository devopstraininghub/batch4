FROM centos
MAINTAINER KIRAN <devopstraininghub@gmail.com>
RUN yum install git -y
RUN yum install java -y
RUN yum install wget -y
RUN mkdir /opt/tomcat
