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
        bat '''
        set "CATALINA_HOME=C:\\apache-tomcat-9.0.108"

        taskkill /F /IM java.exe || echo Tomcat not running

        del /Q "%CATALINA_HOME%\\webapps\\original.war"
        rmdir /S /Q "%CATALINA_HOME%\\webapps\\original"

        ren target\\MySpring_Boot_aa26vij_JWT_Authentication-Thymeleaf-no-DB-0.0.1-SNAPSHOT.war.original original.war
        copy /Y target\\original.war "%CATALINA_HOME%\\webapps\\original.war"

        start "" "%CATALINA_HOME%\\bin\\startup.bat"
        '''
    }
}


    }
}
