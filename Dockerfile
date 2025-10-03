# Use official OpenJDK 17 image
FROM openjdk:17-jdk-slim

# Set working directory inside container
WORKDIR /app

# Copy the Maven-built JAR into container
COPY target/devops-demo-app-1.0.0.jar app.jar

# Command to run the JAR
ENTRYPOINT ["java","-jar","app.jar"]

