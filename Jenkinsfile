pipeline  {
    agent any
    tools {
        maven 'Maven'
    }
    environment{
        ArtifactId = readMavenPom().getArtifactId()
        Version = readMavenPom().getVersion()
        Name = readMavenPom().getName()
        GroupId = readMavenPom().getGroupId()
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
                 script {
                    
                  def NexusRepo = Version.endsWith("SNAPSHOT")?"Devops_project_Snapshot":"Devops_project_Release"

                    nexusArtifactUploader artifacts:
                   [[
                      artifactId: "${ArtifactId}", 
                      classifier: '', 
                      file:  "target/${ArtifactId}-${Version}.war", 
                      type: 'war'
                    ]], 
                    credentialsId: 'nexus-login', 
                    groupId: "${GroupId}",  
                    nexusUrl: '172.31.0.158:8081', 
                    nexusVersion: 'nexus3', 
                    protocol: 'http', 
                    repository: "${NexusRepo}",
                    version: "${Version}"
                } 
            }
        }

        stage('Deploy_to_tomcat') {
            steps{
               echo 'deploy to tomcat.................'
               sshPublisher(
                   publishers: [
                       sshPublisherDesc(
                           configName: 'Absible-controlNode', 
                           transfers: [
                               sshTransfer(
                                   cleanRemote: false, 
                                   excludes: '', 
                                   execCommand: 'ansible-playbook /opt/playbooks/Download_deploy_tomcat.yaml -i /opt/playbooks/hosts', 
                                   execTimeout: 120000, 
                                )
                            ], 
                            usePromotionTimestamp: false, 
                            useWorkspaceInPromotion: false, 
                            verbose: false)])

            }
        }

        stage('Deploy_to_Docker') {
            steps{
               echo 'deploy to Docker.................'
               sshPublisher(
                   publishers: [
                       sshPublisherDesc(
                           configName: 'Absible-controlNode', 
                           transfers: [
                               sshTransfer(
                                   cleanRemote: false, 
                                   excludes: '', 
                                   execCommand: 'ansible-playbook /opt/playbooks/DownloadDeploy-Docker.yaml -i /opt/playbooks/hosts', 
                                   execTimeout: 120000, 
                                )
                            ], 
                            usePromotionTimestamp: false, 
                            useWorkspaceInPromotion: false, 
                            verbose: false)])

            }
        }
   }
}