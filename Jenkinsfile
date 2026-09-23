pipeline {
   agent {
    label 'linux'
}
    stages {

        stage('Build') {
            steps {
                sh 'hostname'
                sh './app.sh'
            }
        }

        stage('Test') {
            steps {
                sh './test.sh'
            }
        }
       stage('GitHub Authentication Test') {
    steps {
        withCredentials([
            usernamePassword(
                credentialsId: 'github-pat',
                usernameVariable: 'GITHUB_USER',
                passwordVariable: 'GITHUB_TOKEN'
            )
        ]) {
            sh '''
                git ls-remote https://${GITHUB_USER}:${GITHUB_TOKEN}@github.com/endunaveen/01-basic-ci.git HEAD
            '''
        }
    }
}

    }
}
