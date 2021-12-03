pipeline {
    agent any

    stages {
#        stage('Code Checkout') {
#            steps {
#                checkout poll: false, scm: [$class: 'GitSCM', branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[credentialsId: 'githubcreds', url: 'https://github.com/anoopnagarro/devopstraining']]]
#            }
#        }
           stage ('Build') {
            steps {
                sh 'mvn -Dmaven.test.failure.ignore=true package' 
            }
            post {
                success {
                    junit 'target/surefire-reports/**/*.xml' 
                }
            }
        }
        
    }
}