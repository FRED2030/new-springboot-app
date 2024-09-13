# Use OpenJDK base image
FROM openjdk:17

# Create a directory for the application
WORKDIR /app

# Copy the JAR file into the container
COPY target/blog-0.0.1-SNAPSHOT.jar blog-0.0.1-SNAPSHOT.jar

# Expose the port the app runs on
EXPOSE 8081

# Define the command to run the application
ENTRYPOINT ["java", "-jar", "blog-0.0.1-SNAPSHOT.jar"]
