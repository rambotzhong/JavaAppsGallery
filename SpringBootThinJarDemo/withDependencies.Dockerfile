FROM mcr.microsoft.com/openjdk/jdk:17-mariner
RUN tdnf check-update && tdnf update -y

ENV LANG='en_US.UTF-8'
ENV LANGUAGE='en_US:en'
ENV LC_ALL='en_US.UTF-8'

RUN mkdir -p /work_dir

# copy the dependencies
COPY app_dependencies /work_dir/

# copy thin jar
ARG JAR_FILE=target/SpringBootThinJarDemo-1.0-SNAPSHOT.jar
COPY ${JAR_FILE} /app.jar


WORKDIR /work_dir
ENTRYPOINT ["java","-Dthin.root=.", "-jar","/app.jar"]