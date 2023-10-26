FROM mcr.microsoft.com/openjdk/jdk:17-mariner
RUN tdnf check-update && tdnf update -y

ENV LANG='en_US.UTF-8'
ENV LANGUAGE='en_US:en'
ENV LC_ALL='en_US.UTF-8'

ARG JAR_FILE=target/*.jar
COPY ./classes /my-java-classes

ENTRYPOINT ["java","-cp", "/my-java-classes", "com.ms.MainApplication"]