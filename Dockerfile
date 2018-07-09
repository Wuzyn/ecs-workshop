FROM openjdk:8-jdk-alpine
VOLUME /tmp
ADD build/libs/wuzyn-ecs.jar wuzyn-ecs.jar
ENV JAVA_OPTS=""
ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar /wuzyn-ecs.jar" ]