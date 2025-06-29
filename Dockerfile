# Use Java 21 base image
FROM eclipse-temurin:21-jdk

# Set working directory inside the container
WORKDIR /app

# Copy the JAR file (built via Maven)
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar

EXPOSE 8080

# Run the application
ENTRYPOINT ["java", "-jar", "/app/app.jar"]
