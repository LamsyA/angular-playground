pipeline {
    agent any
    
    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }
        
        stage('Build') {
            steps {
                script {
                    docker.image('node:14').inside {
                        sh 'npm install'
                        sh 'npm run build'
                    }
                }
            }
        }
        
        stage('Test') {
            steps {
                script {
                    docker.image('node:14').inside {
                        sh 'npm test'
                    }
                }
            }
        }
        
        stage('Deploy') {
            steps {
                // Assuming you have a Docker registry where you push the built image
                script {
                    def dockerRegistry = 'https://your-docker-registry-url'
                    def dockerCredentials = 'Docker'
                    def dockerImageTag = 'JenkinsTag'
                    
                    // Log in to the Docker registry using provided credentials
                    docker.withRegistry(dockerRegistry, dockerCredentials) {
                        // Tag the built Docker image with the desired registry and tag
                        def customImage = docker.image(dockerImageTag).push()
                    }
                }
            }
        }
    }
}
