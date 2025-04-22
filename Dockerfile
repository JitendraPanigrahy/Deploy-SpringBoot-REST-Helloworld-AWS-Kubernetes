# Use an official OpenJDK image as the base image
FROM openjdk:21-jdk-slim

# Set the working directory
WORKDIR /app

# Copy the jar file 
COPY target/helloworld-0.0.1-SNAPSHOT.jar helloworld.jar

# Expose the port where the application runs
EXPOSE 8080

# Command to run the application
ENTRYPOINT ["java", "-jar", "helloworld.jar"]
