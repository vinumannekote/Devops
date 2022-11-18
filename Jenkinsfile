pipeline {
  agent any
  stages {
    stage('BUILD') {
      steps {
        echo 'This is Build stage'
        sh '''
              sleep 5
              exit 0
           '''
      }
    }

    stage('TEST PARALLELE') {
        parallel {
          stage('TEST ON CHROME') {
            steps {
              echo 'This is Test on Chrome browser'
              sh 'sleep 5; exit 1'
            }
          }
          stage('TEST ON SAFARI') {
            steps {
              echo 'This is Test on SAFARI browser'
              sh 'sleep 5; exit 1'
            }
          }
        }
    }

    stage('DEPLOY') {
      steps {
        echo 'This is Deploy stage'
        sh 'sleep 5'
      }
    }
  }
}

