# Use Java 21 base image
FROM eclipse-temurin:21-jdk

# Copy the JAR file (built via Maven)
EXPOSE 8080

WORKDIR /app

COPY target/springBootCicd.jar app.jar

# Run the application
ENTRYPOINT ["java", "-jar", "/app.jar"]
