Use the official OpenJDK 17.0.10 image as base
FROM openjdk:17-jdk-alpine

# Set the working directory in the container
WORKDIR /app

# Copy the JAR file from the host to the container's working directory
COPY java-app.jar /app/java-app.jar

# Expose port 8888 to the outside world
EXPOSE 8888

# Command to run the JAR file
CMD ["java", "-jar", "/app/java-app.jar"]
