                              ---DevOps Project----


This is a simple DevOps Ci/Cd Project 

In this project i did 4 tasks :

  1- Launched and provisioned all the instances on AWS using IAAC (Terraform)
           

  2-Deploy to nexus
         Jenkins will build the artifact and Store it in Nexus Repository                  
  
  3-Deploy to Tomcat server on Ansible Managed node (Ansible_MN_tomcat)
        Jenkins will Download the latest artifact from Nexus to Asible Control-Node and Deploy on Anible-Managed-Node(tomcat Server) through ansible playbook 

  4-Deploy to Docker Host on Ansible Managed node (Ansible_MN_Docker)
     Jenkins will Download the latest war file from nexus,create Dockerfile and stop-delete-the running container and delete-image and then it will Build new Image and run Docker Container through anisble playbook



     ------------------------------------------------------------Thank you--------------
                                                                 S.S.Ravindra
                   
                    

