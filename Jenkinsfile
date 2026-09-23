pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh './app.sh'
            }
        }

        stage('Test') {
            steps {
                sh './test.sh'
            }
        }
    }
}
