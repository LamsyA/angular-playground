pipeline {
    agent any
    
    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }
        
        stage('Install Dependencies') {
            steps {
                sh 'npm install'
            }
        }
        
        stage('Build') {
            steps {
                sh 'ng build --prod'
            }
        }
        
        stage('Run Docker Container') {
            steps {
                script {
                    docker.image('deno:latest').withRun('-p 8080:80') {
                        sh 'cp -r dist/* /usr/share/deno/html'
                    }
                }
            }
        }
    }
}