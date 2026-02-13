pipeline {
    agent any
    stages {
        stage('Test') {
            steps {
                sh 'docker build -t rustci .'
                sh 'docker run -it --rm --name rustci-running rustci'
            }
        }
    }
}