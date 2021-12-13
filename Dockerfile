from ubuntu:20.04

RUN ls -lart
RUN mkdir /opt/tomcat

RUN apt-get -y update
RUN apt-get -y install curl
RUN curl --output /opt/tomcat/apache-tomcat-9.0.55.tar.gz https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.55/bin/apache-tomcat-9.0.55.tar.gz

RUN tar xvfz /opt/tomcat/apache-tomcat-9.0.55.tar.gz
RUN cd /opt/tomcat
RUN pwd
RUN mkdir tomcat9
RUN mv apache-tomcat-9.0.55/* tomcat9/
RUN cd tomcat9/webapps
RUN curl -S -u admin:'Rudraksh@123' --output devopstraining.war http://3.16.161.236:8082/artifactory/sdc-anoop/com/nagarro/devopstraining-maven/0.0.1-SNAPSHOT/devopstraining-maven-0.0.1-SNAPSHOT.war

RUN pwd
RUN ls -ltr
EXPOSE 8080
CMD ["/opt/tomcat/tomcat9/catalina.sh", "start"]