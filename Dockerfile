FROM openjdk:8
ADD target/prajwal-website.war
ENTRYPOINT ["java", "-jar","prajwal-website.war"]
EXPOSE 8080
