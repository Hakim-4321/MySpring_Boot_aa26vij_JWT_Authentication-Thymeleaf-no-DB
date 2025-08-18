FROM eclipse-temurin:17-jdk-alpine
WORKDIR /app
COPY target/*.war app.war
EXPOSE 8081
ENTRYPOINT ["java", "-jar", "app.war"]
