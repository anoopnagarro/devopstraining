from ubuntu:20.04

RUN ls -lart
RUN mkdir /opt/tomcat

RUN apt-get -y update
RUN apt-get -y install curl
RUN cd /opt/tomcat && curl --output /opt/tomcat/apache-tomcat-9.0.56.tar.gz https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.56/bin/apache-tomcat-9.0.56.tar.gz \
&& tar xvfz /opt/tomcat/apache-tomcat-9.0.56.tar.gz \
&& mkdir tomcat9 \
&& mv /opt/tomcat/apache-tomcat-9.0.56/* tomcat9/

RUN curl -S -u admin:'Rudraksh@123' --output /opt/tomcat/tomcat9/webappsdevopstraining.war http://3.134.113.163:8082/artifactory/sdc-anoop/com/nagarro/devopstraining-maven/0.0.1-SNAPSHOT/devopstraining-maven-0.0.1-SNAPSHOT.war
EXPOSE 8080

CMD ["/opt/tomcat/tomcat9/catalina.sh", "start"]