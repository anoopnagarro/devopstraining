FROM tomcat:alpine

RUN curl -S -u admin:'Rudraksh@123' --output /webapps/devopstraining.war http://18.221.138.36:8082/artifactory/sdc-anoop/com/nagarro/devopstraining-maven/0.0.1-SNAPSHOT/devopstraining-maven-0.0.1-SNAPSHOT.war
EXPOSE 8080

CMD ["/opt/tomcat/tomcat9/bin/catalina.sh", "start"]