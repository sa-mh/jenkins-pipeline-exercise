pipeline {
  agent any
  stages {
    stage('install docker-compose'){
      steps{
       //make the file
        sh "chmod +x ./install.sh"
        sh "./install.sh"
        }
    }
    stage('deploy'){
      steps{
       //deploy
        sh "chmod +x ./deploy.sh"
        sh "./deploy.sh"
      }
    }
  }
  
}
