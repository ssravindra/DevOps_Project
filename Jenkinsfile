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
            steps {
               nexusArtifactUploader artifacts:
                [[
                    artifactId: 'RavindraDevOps', 
                    classifier: '', 
                    file: 'RavindraDevOps-0.0.1-SNAPSHOT', 
                    type: 'war'
                ]], 
                   credentialsId: 'nexus-login', 
                   groupId: 'com.RavindraDevOpsPro', 
                   nexusUrl: '172.31.0.158:8081', 
                   nexusVersion: 'nexus3', 
                   protocol: 'http', 
                   repository: 'Devops_project_Snapshot', 
                   version: '0.0.1-SNAPSHOT'
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
}