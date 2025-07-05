# Runtime stage
FROM openjdk:17-jdk-slim
COPY --from=builder /complete/target/rest-service-complete-0.0.1-SNAPSHOT.jar app.jar
ENTRYPOINT ["java","-jar","app.jar"]
