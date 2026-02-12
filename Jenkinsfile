pipeline {
    agent {
        docker { image 'rustlang/rust:nightly-slim' }
    }
    stages {
        stage('Test') {
            steps {
                sh 'cargo --version'
            }
        }
        stage('Build') {
            steps {
                sh 'cargo build'
                sh 'docker build -t glorptest .'
            }
        }
    }
}