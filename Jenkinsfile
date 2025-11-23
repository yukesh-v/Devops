pipeline {
    agent any
    stages {
            stage('Identify User') {
            steps {
                sh 'whoami' // Finds the user running the command
            }
        }
        stage('Running ansible playbook') {
            steps {
               script{
                   sh 'ansible-playbook install-docker-playbook.yml'
            }
            }
        }
    }
}
