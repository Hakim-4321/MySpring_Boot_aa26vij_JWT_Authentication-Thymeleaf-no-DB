pipeline {
    agent any

    
    tools {
        maven 'Maven3.9.11' // Name must match the one in Jenkins tool config
    }

    
    stages {
        stage('Build') {
            steps {
                bat 'mvn clean install'
            }
        }
        stage('Test') {
            steps {
                bat 'mvn test'
            }
        }
    }
}
