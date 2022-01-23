pipeline {
    agent any

    stages {
        stage('SCM CLONE STAGE') {
            steps {
                echo 'clone GAME OF LIFE repo'
                git 'https://github.com/wakaleo/game-of-life.git'
            }
        }
        
        stage('ARTIFACT BUILD STAGE  ') {
            steps {
                echo 'BUILDING .WAR ARTIFACT '
                sh 'mvn clean install'
                
            }
        }
		
		stage('Deploy to tomcat') {
            steps {
                echo 'deploying to tomcat '
                deploy adapters: [tomcat9(credentialsId: '17e1e959-8090-4c85-a4cb-229631de1eed', path: '', url: 'http://44.202.132.254:8080/')], contextPath: 'Batch5', war: '**/*.war'
                
            }
        }
        
    }
}
