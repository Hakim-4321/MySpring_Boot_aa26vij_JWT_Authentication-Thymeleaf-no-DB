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

         stage('Deploy') {
            steps {
                del /Q "C:\Program Files\Apache\Tomcat9\webapps\original.war"
                rmdir /S /Q "C:\Program Files\Apache\Tomcat9\webapps\original"
                copy /Y target\original.war "C:\Program Files\Apache\Tomcat9\webapps\original.war"
                start "" "C:\Program Files\Apache\Tomcat9\bin\startup.bat"

            }
        }
    }
}
