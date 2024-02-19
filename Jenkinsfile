// Declarative //
pipeline {
    agent any
    stages {
        stage('build') {
            steps {
                echo 'Hello World'
            }
        }
      stages('test') {
        steps {
          echo 'Testing the application'
        }
      }

      stages('deploy') {
         steps {
          echo 'deploying the application'
        }
      }
    }
    
}
// Script //
