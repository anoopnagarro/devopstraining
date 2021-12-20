FROM tomcat:alpine

RUN apk add wget \
&& cd webapps \
wget --user admin --password Rudraksh@123 http://18.221.138.36:8082/artifactory/sdc-anoop/com/nagarro/devopstraining-maven/0.0.1-SNAPSHOT/devopstraining-maven-0.0.1-SNAPSHOT.war
EXPOSE 8080

CMD ["catalina.sh", "run"]