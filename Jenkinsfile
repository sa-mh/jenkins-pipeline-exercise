pipeline {
  agent any
  stages {
    stage('install docker-compose'){
      steps{
       //make the file
        sh "chmod +x ./docker-compose-install.sh"
        sh "./docker-compose-install.sh"
        }
    }
    stage('deploy'){
      steps{
       //deploy
        
      }
    }
  }
  
}
