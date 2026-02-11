pipeline {
    agent { dockerfile true }
    stages {
        stage('Test') {
            steps {
                sh 'docker --version'
                sh 'rustc --version'
            }
        }
    }
}