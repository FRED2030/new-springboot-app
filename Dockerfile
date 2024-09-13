# Use the OpenJDK base image with a specific version
FROM openjdk:17

# Install Maven
RUN apt-get update && \
    apt-get install -y maven && \
    apt-get clean

# Set the working directory
WORKDIR /app

# Copy your Maven project files into the container
COPY . .

# Run Maven to build the project and create the JAR file
RUN mvn clean package

# Expose the port your application will run on
EXPOSE 8081

# Define the entry point for the container
ENTRYPOINT ["java", "-jar", "target/blog-0.0.1-SNAPSHOT.jar"]
