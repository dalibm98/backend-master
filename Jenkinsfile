pipeline {
    agent any 
    tools { 
        maven 'maven'
    }
    stages {
        stage ("Clean up"){
            steps {
                deleteDir()
            }
        }
        stage ("Clone repo"){
            steps {
                sh "git clone  https://github.com/dalibm98/backend-master"
            }
        }
        stage ("Generate backend image") {
              steps {
                   dir("backend-master"){
                      sh "mvn clean install"
                      sh "docker build -t springbakend ."
                  }                
              }
          }
        stage ("Run docker compose") {
            steps {
                 dir("backend-master"){
                    sh " docker compose up -d"
                }                
            }
        }
    }
}
  



