# Dockerfile to "JavaHelloWorld
#
# Creates a Java7 Application based on Dockerengine
#
# Developer: Yannic Hansen
#
# Last Modified: 14.10.2016


##ä Get the Default Java-Engine from the casual Docker-Repository
FROM java:7

### Copy the JavaHelloWorld to the current Directory
COPY https://github.com/yhansen/javatest/blob/master/JavaHelloWorld.java .

### Run the Application in current Directory
RUN javac JavaHelloWorld.java

### Command Java and wanted Application to show the Results
CMD ["java", "JavaHelloWorld"]

# If any problems appear, write an Email to yannic.hansen@inform-gmbh.com or contact the Inform GmbH
