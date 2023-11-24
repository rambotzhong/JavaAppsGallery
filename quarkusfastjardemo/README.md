# quarkusdemo

This project uses Quarkus, the Supersonic Subatomic Java Framework.

This project demostrate that we build a quarkus fast-jar and build it with docker image. (building image with a 
native executable is not included in this demo)

First, use the following command to get a fast jar:
```shell
mvn package -Dquarkus.package.type=fast-jar -DskipTests
```

After this, you can find the fast jar and some dependencies in:
/target/quarkus-app

Then, use the Dockerfile.jvm to build a image with the fast jar:
```shell
docker build -t quarkusfastjarapp:v1 --file ./Dockerfile.jvm .
```