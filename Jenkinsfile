pipeline {
    agent any
    environment {
        NODEJS_VERSION = '14.x' // Set the Node.js version you have installed on the Jenkins server
    }
    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Install dependencies') {
            steps {
                script {
                    // Install Node.js using NodeJS Plugin
                    withNodeJS(nodeJSInstallationName: NODEJS_VERSION) {
                        sh 'npm install'
                    }
                }
            }
        }

        stage('Build Angular project') {
            steps {
                script {
                    withNodeJS(nodeJSInstallationName: NODEJS_VERSION) {
                        sh 'ng build --prod'
                    }
                }
            }
        }

       
    }
}
