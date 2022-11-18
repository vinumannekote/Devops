pipeline {
  agent any
  parameters {
      string defaultValue: 'TEST', description: 'environment to deploy the application', name: 'ENV', trim: true
      choice choices: ['main', 'master'], description: 'environment to deploy the application', name: 'BRANCH'
  }

  stages {
    stage('BUILD') {
      steps {
        sh "
              echo Deploying to ${params.ENV}
              echo Code from ${params.BRANCH} branch
              exit 0
           "
      }
    }
  }
}

