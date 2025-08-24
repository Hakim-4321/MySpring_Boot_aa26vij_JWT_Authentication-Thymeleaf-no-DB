pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/Hakim-4321/MySpring_Boot_aa26vij_JWT_Authentication-Thymeleaf-no-DB.git'
            }
        }
        stage('Build') {
            steps {
                sh 'mvn clean install'
            }
        }
        stage('Test') {
            steps {
                sh 'mvn test'
            }
        }
    }
}
