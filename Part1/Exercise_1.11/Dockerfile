FROM amazoncorretto:8-alpine

WORKDIR /app

COPY . .

RUN ./mvnw package

EXPOSE 8080

ENTRYPOINT [ "java", "-jar", "target/docker-example-1.1.3.jar" ]
