FROM maven:3.8.6-amazoncorretto-17
WORKDIR /app
COPY . /app
RUN mvn package -DskipTests
EXPOSE 8080
CMD ["java", "-jar", "/app/application/target/application.jar"]
