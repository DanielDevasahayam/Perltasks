// Declarative //
pipeline {
    agent any
    stages {
        stage('build') {
            steps {
                  script {
            Boolean bool = fileExists 'NewFile.txt'
            if (bool) {
                println "The File exists :)"
            } else {
                println "The File does not exist :("
            }   
        } 
            }
        }
     
        stages('test') {
        steps {
            script {
            Boolean bool = fileExists 'NewFile.txt'
            if (bool) {
                println "The File exists :)"
            } else {
                println "The File does not exist :("
            }   
        } 
        }
      }

      stages('deploy') {
           script {
            Boolean bool = fileExists 'NewFile.txt'
            if (bool) {
                println "The File exists :)"
            } else {
                println "The File does not exist :("
            }   
        } 
      }
    }
    
}
// Script //
