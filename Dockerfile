FROM openjdk:8-jdk-alpine
VOLUME /tmp
ADD ./target/dockerjava-0.0.1-SNAPSHOT.jar dockerjava-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/dockerjava-0.0.1-SNAPSHOT.jar"]
