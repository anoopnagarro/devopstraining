pipeline {
    agent any

    stages
    	{
    		stage ('Code Checkout') 
    		{
    			steps
    			{
    				git changelog: false, credentialsId: 'githubcreds', poll: false, url: 'https://github.com/anoopnagarro/devopstraining'
				}
			}
			
			stage ('Code Build')
			{
				steps
				{
					sh 'mvn clean package -Dmaven.test.skip=true'
				}
			}
			
			stage ('Test code - execute unit tests') {
            steps {
                sh 'mvn test' 
            }
        }
         stage('Deploy on Local Tomcat')
        {
            steps
            {
                sh 'cp target/devopstraining-maven-0.0.1-SNAPSHOT.war /opt/tomcat9/webapps/'
            }
        }
        
         stage('Create Docker Image')
        {
            steps
            {
                sh 'docker build -t devopstraining .'
                sh 'docker tag devopstraining:latest 831256243660.dkr.ecr.us-east-2.amazonaws.com/devopstraining:latest'
            }
        }
        stage('Push to ECR')
        {
        	steps
        	{	
        		sh 'aws ecr get-login-password --region us-east-2 | docker login --username AWS --password-stdin 831256243660.dkr.ecr.us-east-2.amazonaws.com'
        		sh 'docker push 831256243660.dkr.ecr.us-east-2.amazonaws.com/devopstraining:latest'
        	}
        }
        stage('Docker run')
        {
            steps
            {
                sh 'docker run -d -p 9090:8080 devopstraining:latest'
            }
        }
       /* stage('Provision ec2 instance using Terrafrom')
        {
            steps
            {
                sh 'terraform init'
                sh 'terraform apply --auto-approve'
            }
        }*/

         
    }
}