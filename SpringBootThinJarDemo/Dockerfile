FROM mcr.microsoft.com/openjdk/jdk:17-mariner
RUN tdnf check-update && tdnf update -y

ENV LANG='en_US.UTF-8'
ENV LANGUAGE='en_US:en'
ENV LC_ALL='en_US.UTF-8'

ARG JAR_FILE=target/SpringBootThinJarDemo-1.0-SNAPSHOT.jar
COPY ${JAR_FILE} app.jar

# if the dependencies are not found, spring-bot-thin-launcher will download first, so it may takes longer
# so another way is to copy the dependencies to the image first, so that the container should start very fast
ENTRYPOINT ["java","-Dthin.root=.", "-jar","/app.jar"]