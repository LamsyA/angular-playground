pipeline {
    agent any

    stages {
        stage('SCM') {
            steps {
                git branch: 'main', changelog: false, poll: false, url: 'https://github.com/LamsyA/angular-playground.git'
            }
        }
        stage('Docker Build and Push') {
            steps {
                script {
                    // This step should not normally be used in your script. Consult the inline help for details.
                    withDockerRegistry(credentialsId: 'Docker', toolName: 'Docker')  {
                        bat "docker build -t lamsy/deno-docker:pipeline ."
                        bat "docker push lamsy/deno-docker:pipeline1"
                    }
                }
            }
        }
    }
}
