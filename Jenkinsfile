pipeline {
    agent any
    
environment {
    dockerhub=credentials('dockerhub')
    }
    
    
    stages {
        
        stage('pullcode') {
            steps {
                sh "rm -rf ecomm"
                sh 'git clone https://github.com/mubeen507/ecomm.git '
                echo 'ok code pulled '
            }   
            }
       stage('build image') {
            steps {
                sh 'pwd'
                sh 'cd ecomm'
                sh 'pwd'
                sh 'docker build -t mubeen507/ecomm2025 -f /var/lib/jenkins/workspace/ecommproject/Dockerfile .'
                echo 'ecomm image is build '
            }
            }         
        stage('Docker Login') { 
            steps {
                sh 'echo $dockerhub_PSW | docker login -u $dockerhub_USR --password-stdin'
            }
          }
         stage('Docker Push') {  
            steps {
                sh 'docker push mubeen507/ecomm2025'
            }
          }
        stage('Removing old docker container') {
            steps {
                
                sh 'docker container rm  ecommcont -f'
                }
              }
        stage('Running the docker container') {
            steps {
                sh 'docker run -d  --name ecommcont -p 80:80 mubeen507/ecomm2025'
                }
              } 

    }
}
