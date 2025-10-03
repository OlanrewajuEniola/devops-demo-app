# Use official OpenJDK 17 image
FROM openjdk:17-jdk-slim

# Set working directory inside container
WORKDIR /app

# Copy the Maven-built JAR into container
COPY target/HelloWorld-1.0-SNAPSHOT.jar app.jar

# Command to run the JAR
ENTRYPOINT ["java","-jar","app.jar"]

