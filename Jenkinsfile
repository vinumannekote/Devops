pipeline {
  agent any
  parameters {
      string defaultValue: 'TEST', description: 'environment to deploy the application', name: 'ENV', trim: true
      choice choices: ['main', 'master'], description: 'environment to deploy the application', name: 'BRANCH'
  }

  stages {
    stage('BUILD') {
      steps {
        sh '''
              sleep 5
              echo Deploying to parms.ENV
              echo Code from parms.BRANCH branch
              exit 0
           '''
      }
    }
  }
}

