FROM ubuntu:22.04
LABEL maintainer = TechHub
RUN apt-get update -y
RUN apt-get install openjdk-17-jdk wget -y
RUN wget https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.55/bin/apache-tomcat-8.5.55.tar.gz -O /tmp/tomcat.tar.gz
RUN cd /tmp && tar xvfz tomcat.tar.gz
RUN rm /tmp/tomcat.tar.gz
RUN mv /tmp/apache-tomcat-8.5.55 /opt/apache-tomcat-8.5.55
COPY /target/samplewebapp.war /opt/apache-tomcat-8.5.55/webapps/samplewebapp.war
EXPOSE 8080
CMD /opt/apache-tomcat-8.5.55/bin/catalina.sh run