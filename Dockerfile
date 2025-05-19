
FROM eclipse-temurin:17-jdk

WORKDIR /app
COPY . /app
RUN ./gradlew build -x test

CMD ["java", "-jar", "connector.jar"]
