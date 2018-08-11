from openjdk:8
COPY . /myapp
run apt-get update -y
run apt-get install maven -y
WORKDIR myapp/
run mvn clean compile 
run mvn package
cmd mvn exec:java 
