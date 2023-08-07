pipeline {
  agent any
  options {
    buildDiscarder(logRotator(numToKeepStr: '5'))
  }
  environment {
    DOCKERHUB_CREDENTIALS = credentials('lamsy-dockerhub')
  }
  stages {
    stage('Build') {
      steps {
        sh 'docker build -t lamsy/deno-docker:latest .'
      }
    }
    stage('Login') {
      steps {
        sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
      }
    }
    stage('Push') {
      steps {
        sh 'docker push lamsy/deno-docker:latest'
      }
    }
  }
  post {
    always {
      sh 'docker logout'
    }
  }
}