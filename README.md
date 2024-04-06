# SampleWebApp
SampleWebApp application for Docker

# Setup
Follow the steps to Install application

	Step 1 : Update the system packages
		$ sudo apt-get update
		
	Step 2 : Install OpenJDK 17
		$ sudo apt install openjdk-17-jdk -y
		
	Step 3 : Install Maven
		$ sudo apt install maven -y
		
	Step 4 : Install Git
		$ sudo apt-get install git -y
		
	Step 5 : Clone as following
		$ git clone https://<access_token>@github.com/TechHubRepo/samplewebapp.git

# How to Run
Run the application as following under root diretory of project

	$ mvn spring-boot:run

# How to Build Docker Image
Follow the following steps to make docker image

    $ mvn clean package
    $ docker image build -t techeduhub/tomcat:8.5.55 .
    $ docker push techeduhub/tomcat:8.5.55
