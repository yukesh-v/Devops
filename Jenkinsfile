pipeline {
   agent  any
    stages {
        stage('checkout') {
            steps {
                 script{
                     cleanWs()
                        dir("ansible")
                        {
                            git "https://github.com/yukesh-v/Devops.git"
                        }
                    }
                }
            }

        stage('running playbook') {
            steps {
                sh 'pwd;cd ansible/ ; ansible-playbook install-docker-palybook.yml'
            }
        }

       
    }

  }
