FROM ubuntu
RUN apt-get update
RUN apt-get install -y git
RUN git clone https://github.com/prajwal1691/prajwal-website.git
RUN apt-get install -y maven
WORKDIR /prajwal-website
RUN mvn clean install
