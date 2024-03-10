# Use the official OpenJDK image with Java 17
FROM amazoncorretto:17

# Set the working directory inside the container
WORKDIR /app

# Copy the JAR file into the container
COPY build/libs/rest-demo-h2-crud-0.0.1-SNAPSHOT.jar app.jar

# Expose the port that the application will run on
EXPOSE 8080

# Command to run the application
CMD ["java", "-jar", "app.jar"]