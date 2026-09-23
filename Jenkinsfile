stage('GitHub Credential Test') {
    steps {
        withCredentials([
            usernamePassword(
                credentialsId: 'github-pat',
                usernameVariable: 'GITHUB_USER',
                passwordVariable: 'GITHUB_TOKEN'
            )
        ]) {
            sh 'echo "GitHub user: $GITHUB_USER"'
            sh 'echo "GitHub token is available to Jenkins"'
        }
    }
}
