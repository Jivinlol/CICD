pipeline {
    agent any

    environment {
        DOCKER_IMAGE_NAME = 'cicd-pipeline:latest'
    }

    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/your-username/inventory-service.git'
            }
        }

        stage('Build with Maven') {
            steps {
                sh 'mvn clean package'
            }
        }

        stage('Run Tests') {
            steps {
                sh 'mvn test'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh "docker build -t ${DOCKER_IMAGE_NAME} ."
            }
        }

        stage('Deploy with Terraform') {
            steps {
                dir('terraform') {
                    sh 'terraform init'
                    sh 'terraform apply -auto-approve'
                }
            }
        }
    }

    post {
        success {
            echo '✅ Build and deployment completed!'
        }
        failure {
            echo '❌ Build or deployment failed.'
        }
    }
}
