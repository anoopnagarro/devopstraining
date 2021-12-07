pipeline {
    agent any

    stages {
    		stage ('Code Checkout') {
            steps {
               git changelog: false, credentialsId: 'githubcreds', poll: false, url: 'https://github.com/anoopnagarro/devopstraining'
            }
    
           stage ('Code Build') {
            steps {
                sh 'mvn clean package' 
            }
        }
        stage ('Test code - execute unit tests') {
            steps {
                sh 'mvn test' 
            }
        }
         stage('Create Docker Image')
        {
            steps
            {
                sh 'docker build -t devopstraining .'
            }
        }
        stage('Docker run')
        {
            steps
            {
                sh 'docker run -d --name anoop_devopstraining -p 8087:8080 devopstraining:latest'
            }
        }
         
    }
}