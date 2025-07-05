pipeline {

    options {
        skipDefaultCheckout(true) 
        cleanWs() 
    }
    environment {
        AWS_ACCESS_KEY_ID     = credentials('AWS_ACCESS_KEY_ID')
        AWS_SECRET_ACCESS_KEY = credentials('AWS_SECRET_ACCESS_KEY')
    }

    parameters {

        choice(name: 'Region', choices: ['us-east-1', 'us-west2'], description: '')
        text(name: 'Name', defaultValue: '', description: 'Enter Name')
        booleanParam(name: 'AutoApprove', defaultValue: false, description: 'Automatically run apply after generating plan?')

    } 

   agent  any
    stages {
        stage('checkout') {
            steps {
                 script{
                        dir("terraform")
                        {
                            git "https://github.com/yukesh-v/Devops.git"
                        }
                    }
                }
            }

        stage('Plan') {
            steps {
                echo "Region parameter: ${params.Region}"
                echo "Name parameter: ${params.Name}"
                echo "AutoApprove parameter: ${params.AutoApprove}"
                sh "pwd;cd terraform/ ; terraform init -no-color -var 'region=${params.Region}' -var 'tags={\"Name\":\"${params.Name}\"}'"
                sh "pwd;cd terraform/ ; terraform plan -no-color -out tfplan"
                sh 'pwd;cd terraform/ ; terraform show -no-color tfplan > tfplan.txt'
            }
        }
        stage('Approval') {
           when {
               not {
                   equals expected: true, actual: params.autoApprove
               }
           }

           steps {
               script {
                    def plan = readFile 'terraform/tfplan.txt'
                    input message: "Do you want to apply the plan?",
                    parameters: [text(name: 'Plan', description: 'Please review the plan', defaultValue: plan)]
               }
           }
       }

        stage('Apply') {
            steps {
                sh "pwd;cd terraform/ ; terraform apply -no-color -input=false tfplan"
            }
        }
    }

  }
