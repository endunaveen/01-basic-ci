pipeline {
   agent {
    label 'linux'
}

   environment {
        APP_NAME = 'basic-ci'
        VERSION = '1.0'
    }
    stages {

        stage('Build') {
            steps {
                sh 'hostname'
                sh 'mkdir -p build'
                sh 'echo "My application artifact - Build ${BUILD_NUMBER}" > build/app.txt'
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
       post {
        success {
           archiveArtifacts artifacts: 'build/app.txt'
            echo "Artifact archived successfully"
          }

          failure {
        echo "Pipeline failed"
           }
      }
   

    }
}


}
