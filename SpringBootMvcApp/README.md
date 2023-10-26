# Introduction
This app is using spring boot mvc to serve as a web server, listening on port 8080.   


# Docker Image

1. run app using 'java -jar xxxx.jar'
   Using Dockerfile to build a image to run this app, with cmd line: java -jar /test-dir/app.jar.

2. run app using 'java -cp xxxx.jar <main class>'
  Using runwithjavacp.Dockerfile to build a image to run this app, with cmd line: 'java -cp xxxx.jar <main class>'.

One executable jar could have one of the following problems:
* The main-class to run was not listed in the runnable JAR file’s manifest file;
* The JAR’s manifest file is missing; or
* The JAR file distributor wants you to specify the main-class on the command line.

in this case you need to run the jar with 'java -cp' option and specify the main class.