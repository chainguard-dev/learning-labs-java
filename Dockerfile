FROM maven

WORKDIR /work

COPY src/ src/
COPY pom.xml pom.xml

RUN mvn clean package

WORKDIR /app

RUN cp /work/target/java-demo-app-1.0.0.jar .

ENTRYPOINT ["java", "-jar", "java-demo-app-1.0.0.jar"]
