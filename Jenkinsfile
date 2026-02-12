pipeline {
    agent {
        docker { image 'node:24.13.0-alpine3.23' }
    }
    stages {
        stage('Test') {
            steps {
                sh 'node --eval "console.log(process.platform,process.env.CI)"'
            }
        }
    }
}