pipeline {
    agent any
    stages {
        stage('Build') {
            tools {
                maven "maven_3_6_3"
            }
            steps {
                sh "mvn --version"
            }

        }
         stage('Checkout') {
            steps {
                checkout scm
            }
      }
       stage('Docker login'){
        steps {
          sh 'echo here'
        }
      }


    }
}