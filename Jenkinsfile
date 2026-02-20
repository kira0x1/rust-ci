pipeline {
    agent any
    environment {
        IMAGE_NAME = "kira0x1/rustci-test"
    }
    stages {
        stage('Build') {
            agent { label 'docker' }
            steps {
                sh """
                    docker build \
                      -t ${IMAGE_NAME}:${BUILD_NUMBER} \
                      -t ${IMAGE_NAME}:latest \
                      .
                """
            }
        }
        stage('Push') {
            agent { label 'docker' }
            steps {
                sh """
                    docker push ${IMAGE_NAME}:${BUILD_NUMBER}
                    docker push ${IMAGE_NAME}:latest
                """
            }
        }
    }
}