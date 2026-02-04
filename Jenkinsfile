pipeline {
    agent any

    stages {

        stage('Clone Project') {
            steps {
                echo "Récupération du code..."
                git branch: 'main',
                    url: 'https://github.com/spring-projects/spring-petclinic.git'
            }
        }

        stage('Build Maven') {
            steps {
                echo "Compilation Maven..."
                sh 'mvn clean package -DskipTests'
            }
        }

        stage('Build Docker Images') {
            steps {
                echo "Construction des images Docker..."
                sh 'docker compose build'
            }
        }

        stage('Start Containers') {
            steps {
                echo "Lancement des conteneurs..."
                sh 'docker compose up -d'
            }
        }
    }

    post {
        always {
            echo "Pipeline terminée"
        }
    }
}
