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
              sh 'sleep 5; '
            }
          }
          stage('TEST ON SAFARI') {
            steps {
              echo 'This is Test on SAFARI browser'
              sh 'sleep 5;'
            }
          }
        }
    }

    stage('DEPLOY') {
      parallel {
        stage('SERVER 1') {
          steps {
            echo 'This is Deploy to server1'
            sh 'sleep 5'
          }
        }

        stage('SERVER 2') {
          steps {
            echo 'This is Deploy to server2'
            sh 'sleep 5'
          }
        }

        stage('SERVER 3') {
          steps {
            echo 'This is Deploy to server3'
            sh 'sleep 5'
          }
        }

        stage('SERVER 4') {
          steps {
            echo 'This is Deploy to server4'
            sh 'sleep 5'
          }
        }
      }
    }
  }
}

