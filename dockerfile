# Runtime stage
FROM openjdk:11-jre-slim-sid
WORKDIR /app
COPY --from=builder ${WORKSPACE}/complete/target/rest-service-complete-0.0.1-SNAPSHOT.jar app.jar
EXPOSE 8888
ENTRYPOINT ["java", "-jar", "app.jar"]



