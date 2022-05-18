                              ---DevOps Project-----

This is a simple DevOps Ci/Cd Project 

In this project i did 3 tasks :

  1-Deploy to nexus
      Jenkins will build the artifact and Store it in Nexus Repository                  
  
  2-Deploy to tomcat server
     Jenkins will Download the latest artifact from Nexus to Asible Control-Node and Deploy on Anible-Managed-Node(tomcat Server) through ansible playbook 

  3-Deploy to Docker
     Jenkins will Download the latest war file from nexus,create Dockerfile and stop-delete-the running container and delete-image and then it will Build new Image and run Docker Container through anisble playbook



     ------------------------------------------------------------thank you--------------
                   
                    

