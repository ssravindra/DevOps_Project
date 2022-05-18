pipeline  {
    agent any
    tools {
        maven 'Maven'
    }

   stages {
        // 1-stage
        stage('Build'){
           steps {
                sh 'mvn clean install package'
            }
        }

        stage('Unit_Test') {
          steps {
            sh 'mvn test'
          }
        }


        stage('Deploy_to_nexus') {
            steps{
               echo 'deploy to Nexus.................'
            }
        }

        stage('Deploy_to_tomcat') {
            steps{
               echo 'deploy to tomcat.................'
            }
        }

        stage('Deploy_to_Docker') {
            steps{
               echo 'deploy to Docker.................'
            }
        }


}