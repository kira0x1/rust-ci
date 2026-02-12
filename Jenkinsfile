pipeline {
    agent { dockerfile true }
    stages {
        stage('Test') {
            steps {
                sh 'docker --version'
                sh 'rustc --version'
            }
        }
        stage('Build'){
            steps {
                echo 'Building...'
                sh 'docker build -t . testbin'
                echo 'Created testbin'
            }
        }
    }
}