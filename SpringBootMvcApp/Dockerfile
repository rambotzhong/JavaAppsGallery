FROM mcr.microsoft.com/openjdk/jdk:17-mariner
RUN tdnf check-update && tdnf update -y
RUN mkdir -p /test-dir

ENV LANG='en_US.UTF-8'
ENV LANGUAGE='en_US:en'
ENV LC_ALL='en_US.UTF-8'

ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} /test-dir/app.jar

WORKDIR /test-dir
ENTRYPOINT ["java","-jar","./app.jar"]