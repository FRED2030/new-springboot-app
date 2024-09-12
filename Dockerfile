FROM openjdk:17
VOLUME /tmp
ADD target/blog-0.0.1-SNAPSHOT.jar blog-0.0.1-SNAPSHOT.jar
EXPOSE 8081
ENTRYPOINT ["java","-jar","blog-0.0.1-SNAPSHOT.jar"]
