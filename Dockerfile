FROM registry.docker/java:openjdk-8-jre
ADD bin /build/bin/
ADD config /build/config
ADD target /build/target
#ADD target/kafka-rest-3.2.0.jar /build/target/
RUN mkdir /etc/kafka-rest
WORKDIR /build
EXPOSE 8082
CMD ["bin/rest-proxy-docker.sh"]
