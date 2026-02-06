FROM openjdk:27-ea-trixie

WORKDIR /app

COPY build/libs/*.jar app.jar

EXPOSE 9123

CMD ["java", "-jar", "app.jar"]
