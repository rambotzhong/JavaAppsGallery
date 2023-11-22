FROM tomcat:8.0-alpine

ADD sample.war /usr/local/tomcat/webapps/sample.war

EXPOSE 8080

CMD ["catalina.sh", "run"]

# after running, you can visit localhost:8080/sample/ to validate