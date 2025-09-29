# Start from an OpenJDK base image
FROM openjdk:17-jdk-slim
# Set working directory inside the container
WORKDIR /app
# Copy the built jar file from Maven target folder into the container
COPY target/hello-maven-1.0-SNAPSHOT.jar app.jar
# Run the JAR when container starts
ENTRYPOINT ["java", "-jar", "app.jar"]
