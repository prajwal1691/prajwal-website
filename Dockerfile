FROM openjdk:8
EXPOSE 8080
ADD target/kubernetes.war kubernetes.war
ENTRYPOINT ["java","-war","/kubernetes.war"]
