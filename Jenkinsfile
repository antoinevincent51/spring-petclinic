pipeline {
    agent any

    stages {

        stage('Build Maven') {
            steps {
                echo 'Compilation Maven...'
                sh 'chmod +x mvnw'
                sh './mvnw clean package -DskipTests'
            }
}


        stage('Build Docker Images') {
            steps {
               echo "Construction des images Docker..."
                sh 'docker-compose build'
            }
        }

        stage('Start Containers') {
            steps {
                echo "Lancement des conteneurs..."
                sh 'docker-compose up -d'
            }
        }
    }

    post {
        always {
            echo "Pipeline terminée"
        }
    }
}

