pipeline {
    agent none

    stages {
        stage('CHECKOUT') {
            agent {label 'slave01'}
            steps {
                git branch: 'main', url: 'https://github.com/prajwal1691/prajwal-website'
             }
        }
        stage('BUILD') {
            agent {label 'slave01'}
            steps {
               sh 'cd /home/ec2-user/jenkins/workspace/prajwal-website1'
                sh 'mvn clean install'
            }
        }
        stage('DEPLOY') {
           agent {label 'slave01'}
            steps {
               sh '''cd /home/ec2-user/jenkins/workspace/prajwal-website1/target
                sudo cp *.war /opt/tomcat/webapps'''
            }
        }
    }
}
