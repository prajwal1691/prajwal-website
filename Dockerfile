FROM node:12.2.0-alpine
WORKDIR app
COPY . .
EXPOSE 8080
CMD ["mvn","clean","install]
