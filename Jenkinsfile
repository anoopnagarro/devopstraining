pipeline {
    agent any

    stages {
           stage ('Build') {
            steps {
                sh 'mvn clean -Dmaven.test.failure.ignore=true package' 
            }
        }
        
    }
}