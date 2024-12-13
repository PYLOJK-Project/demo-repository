FROM openjdk:17-jdk-slim

CMD ["./gradlew", "clean", "build"]

ARG JAR_FILE=*.jar

WORKDIR /app

COPY build/libs/${JAR_FILE} demoProject.jar

ENTRYPOINT ["java", "-jar", "demoProject.jar"]