pipeline {
    agent any
    
environment {
    dockerhub=credentials('dockerhub')
    }
    
    
    stages {
        
        stage('pullcode') {
            steps {
                sh 'git clone https://github.com/mubeen507/ecomm.git '
                echo 'ok code pulled '
            }   
            }
               
        
    }
}
