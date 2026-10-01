pipeline {

    agent {
        label 'linux'
    }

    environment {
        APP_NAME = 'basic-ci'
        VERSION = '1.0'
    }

    parameters {
        choice(
            name: 'ENVIRONMENT',
            choices: ['dev', 'test', 'prod'],
            description: 'Choose the deployment environment'
        )
    }

    stages {

        stage('Build') {
            steps {
                echo "Building ${APP_NAME}"
                ./app.sh
            }
        }

        stage('Test') {
            steps {
                sh './test.sh'
            }
        }

    }

    post {

        success {
            archiveArtifacts artifacts: 'build/app.txt'
            echo "Artifact archived successfull"
        }

        failure {
            echo "Pipeline failed"
        }

    }
}
