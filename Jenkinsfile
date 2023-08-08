

pipeline {
  agent any 
  stages {
      stage('Checkout') {
            steps {
                checkout scm
            }
      }
      stage('Docker login'){
        steps {
          bat 'echo here'
        }
      }     
   }
}