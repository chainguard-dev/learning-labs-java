# ----------------------------------------------------------------------------------------------------------------------
# maven@latest as of October 26, 2024
# ----------------------------------------------------------------------------------------------------------------------
FROM docker.io/library/maven:latest@sha256:440a97a9304d5f66cb96e01161724d0ac3a50d1d90c4cb99dffd94fe4282d31f

WORKDIR /work

COPY src/ src/
COPY pom.xml pom.xml

RUN mvn clean package
RUN REPOSITORY=$(mvn help:evaluate -Dexpression=settings.localRepository -q -DforceStdout) && rm -rf ${REPOSITORY}

WORKDIR /app

RUN cp /work/target/java-demo-app-1.0.0.jar .

ENTRYPOINT ["java", "-jar", "java-demo-app-1.0.0.jar"]
