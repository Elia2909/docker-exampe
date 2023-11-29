FROM gradle:jdk21 AS build
WORKDIR /app
COPY . /app
RUN ./gradlew clean build

FROM openjdk:21
WORKDIR /app
EXPOSE 8080:8080
COPY --from=build /app/build/libs/*.jar backend_build.jar
ENTRYPOINT ["java","-jar","/app/backend_build.jar"]
