FROM maven:alpine
MAINTAINER Govind

EXPOSE 8888
COPY target/config-service-0.0.1.jar /opt/spring-cloud-config-server/target/
WORKDIR /opt/spring-cloud-config-server/
WORKDIR /
ENTRYPOINT ["java", "-Djava.security.egd=file:/dev/./urandom", "-jar",\
            "/opt/spring-cloud-config-server/target/config-service-0.0.1.jar",\
            "--server.port=8888",\
            "--spring.config.name=application"]

