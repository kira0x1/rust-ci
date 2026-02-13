pipeline {
    agent { dockerfile true }
    stages {
        stage('Test') {
            steps {
                sh 'cargo --version'
                sh 'target/debug/rust-ci --help'
            }
        }
    }
}