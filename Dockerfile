# Use the official lightweight JDK 17 base image
FROM eclipse-temurin:17-jdk-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the application JAR file into the container
COPY target/java-image.jar /java-image.jar

# Expose the application port (adjust as per your application)
EXPOSE 8080

# Command to run the JAR file
ENTRYPOINT ["java", "-jar", "/java-image.jar"]
