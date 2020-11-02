pipeline {
  agent any
  environment {
            app_version = 'v1'
            rollback = 'false'
        }
  stages {
    stage('install docker-compose'){
      steps{
       //make the file
        sh "chmod +x ./install.sh"
        sh "./install.sh"
        }
    }
    stage('Build Image'){
                steps{
                    script{
                        if (env.rollback == 'false'){
                            image = docker.build("[your-dockerhub-username]/chaperoo-frontend")
                        }
                    }
                }
            }
            stage('Tag & Push Image'){
                steps{
                    script{
                        if (env.rollback == 'false'){
                            docker.withRegistry('https://registry.hub.docker.com', 'docker-hub-credentials'){
                                image.push("${env.app_version}")
                            }
                        }
                    }
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
