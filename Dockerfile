FROM maven:3.8-openjdk-18 as builder

WORKDIR /app

COPY pom.xml /app
COPY src /app/src


RUN mvn package

RUN ls -la /app/target

FROM openjdk:18
COPY --from=builder /app/target/hello-world-0.0.1-SNAPSHOT.jar /app/hello-world-0.0.1-SNAPSHOT.jar

EXPOSE 8080

CMD ["java", "-jar", "/app/hello-world-0.0.1-SNAPSHOT.jar"]