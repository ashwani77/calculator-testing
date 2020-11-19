FROM tomcat:8.0.20-jre8
MAINTAINER Ashwani
COPY target/calculator.war /usr/local/tomcat/webapps/
COPY tomcat-users.xml /usr/local/tomcat/conf/
EXPOSE 8080
ENTRYPOINT ["/usr/local/tomcat/bin/catalina.sh", "run"]