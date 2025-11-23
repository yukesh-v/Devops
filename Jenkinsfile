pipeline {
    agent any
   tools {
       ansible 'Ansible'
   }
    stages {
        stage('Running ansible playbook') {
            steps {
               script{
                   sh 'ansible-playbook install-docker-playbook.yml'
            }
            }
        }
    }
}
