pipeline {
  agent any
  options {
    buildDiscarder(logRotator(numToKeepStr: '5'))
  }
  environment {
    DOCKERHUB_CREDENTIALS = credentials('docker-Auth')
  }
  stages {
    stage('Build') {
      steps {
        bat 'docker build -t lamsy/deno-docker .'
      }
    }
    stage('Login') {
      steps {
        bat 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
      }
    }
    stage('Push') {
      steps {
        bat 'docker push lamsy/deno-docker'
      }
    }
  }
  post {
    always {
      bat 'docker logout'
    }
  }
}