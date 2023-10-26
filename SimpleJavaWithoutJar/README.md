# Introduction

This is an example of Java application run without packaging to a jar file.

# How to run 
1. Build java files to classes:

```shell
javac -d classes src/main/java/com/ms/MainApplication.java src/main/java/com/ms/pkg/*.java src/main/java/com/ms/task/*.java
```

2. Run application

```shell
java -cp ./classes com.ms.MainApplication
```

