pipeline {
    agent any

    stages {
        stage('Git Checkout') {
            steps {
			script {
               checkout scmGit(branches: [[name: '*/master']], extensions: [], 
			   userRemoteConfigs: [[credentialsId: '4dead74e-d439-463f-8554-c19259ee97a4', url: 'https://github.com/muraligit87/Temp.git']])
			   }
            }
        }
    
        stage('Building Docker image') {
            steps {
			  script {
                sh """
                cd ${WORKSPACE}
                docker build -t "myhttp" .
                """
			    
			   }
            }
        }
    }
}
           
        
