pipeline {
    agent any

    stages {
        stage('Credential Test') {
            steps {
                withCredentials([
                    usernamePassword(
                        credentialsId: 'github-lab-credentials',
                        usernameVariable: 'GIT_USER',
                        passwordVariable: 'GIT_PASSWORD'
                    )
                ]) {
                    sh 'echo "GitHub username: $GIT_USER"'
                    sh 'echo "Password is securely available to Jenkins"'
                }
            }
        }
    }
}

