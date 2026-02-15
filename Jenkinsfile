pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                sh 'docker build -t kira0x1/rustci-test .'
            }
        }
        stage('Publish') {
            sh 'docker push kira0x1/rustci-test'
        }
    }
}