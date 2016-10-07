FROM java:7
COPY JavaHelloWorld.java https://github.com/yhansen/javatest
RUN javac JavaHelloWorld.java
CMD ["java", "JavaHelloWorld"]
