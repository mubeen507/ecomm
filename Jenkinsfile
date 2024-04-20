pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh 'sh 'docker build -t mubeen507/ecomm999 .'
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}
