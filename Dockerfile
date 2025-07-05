# Runtime stage
FROM openjdk:10-jdk-slim
COPY  complete/target/rest-service-complete-0.0.1-SNAPSHOT.jar app.jar
ENTRYPOINT ["java","-jar","app.jar"]
