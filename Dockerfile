FROM java:8-jdk-alpine
COPY ["./target/demo-*.jar", "/usr/app/demo.jar"]

WORKDIR /usr/app

RUN sh -c 'demo.jar'

EXPOSE 8181

ENTRYPOINT ["java","-jar","demo.jar"]