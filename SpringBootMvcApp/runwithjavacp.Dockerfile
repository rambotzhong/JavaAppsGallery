FROM mcr.microsoft.com/openjdk/jdk:17-mariner
RUN tdnf check-update && tdnf update -y

ENV LANG='en_US.UTF-8'
ENV LANGUAGE='en_US:en'
ENV LC_ALL='en_US.UTF-8'

ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} /app.jar

# for spring boot application, org.springframework.boot.loader.JarLauncher is the main class
ENTRYPOINT ["java","-cp","/app.jar", "org.springframework.boot.loader.JarLauncher"]