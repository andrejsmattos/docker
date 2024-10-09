FROM openjdk:21-slim-buster
LABEL authors="andre"
WORKDIR /app
COPY target/*.jar app.jar
ENV SERVER_PORT=8081
EXPOSE 8081
ENTRYPOINT ["java", "-jar", "app.jar"]
