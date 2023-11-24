# Introduction

This is the demo of a spring boot web application, packaged as a thin jar, by using the spring-boot-thin-launcher.

# How to run
1. Enable the thin jar launcher by adding the following config:
```xml
<build>
    <plugins>
        <plugin>
            <groupId>org.springframework.boot</groupId>
            <artifactId>spring-boot-maven-plugin</artifactId>
            <dependencies>
                <!-- The following enables the "thin jar" deployment option. -->
                <dependency>
                    <groupId>org.springframework.boot.experimental</groupId>
                    <artifactId>spring-boot-thin-layout</artifactId>
                    <version>1.0.31.RELEASE</version>
                </dependency>
            </dependencies>
        </plugin>
    </plugins>
</build>
```

2. package the thin jar
just use:
```shell
mvn clean package
```
to get the thin jar

3. run the jar
run the thin jar by:
```shell
java -jar xxxx.jar
```