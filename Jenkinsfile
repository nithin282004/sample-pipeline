pipeline{
    agent any
    stages{
        stage('Build Docker Image'){
            steps{
                script{
                    bat 'docker build -t sample-image .'
                }
            }

        }
        stage('Run Image to Start a Container'){
            steps{
                script{
                    bat 'docker rm -f sample-pipeline || true'
                    bat 'docker rmi sample-image || true'
                    bat 'docker run -d -p 20:20 --name sample-pipeline sample-image'
                }
            }
        }
    }
    post{
        failure{
            echo "build  or development failed"
        }
        success{
            echo 'App deployed successfully.'
        }
    }
}
