variable "region" {
  type    = string
  default = "us-east-1"
}

variable "ZONE1" {
  default = "us-east-1b"
}

variable "ports" {
  type    = list(number)
  default = [22, 80, 443, 8080, 8081, 9000]
}
variable "key_name" {
  description = "This is key name"
  default = "DevOps_project_key"
  
}
variable "medium_instances" {
  type    = string
  default = "t2.medium"
}

variable "micro_instances" {
  type    = string
  default = "t2.micro"
}

variable "Ami_Ubuntu" {
  type    = string
  default = "ami-005de95e8ff495156"
}

variable "Ami_Centos" {
  type    = string
  default = "ami-02358d9f5245918a3"
}

variable "Ami_Amazon_linux" {
  type    = string
  default = "ami-0022f774911c1d690"
}

variable "Jenkins_Userdata" {
  description = "This path is for Jenkins userdata"
  default     = "../Userdata's/Jenkins_userdata.sh"
}

variable "Nexus_Userdata" {
  description = "This path is for Nexus userdata"
  default     = "../Userdata's/Nexus_userdata.sh"
}

variable "Ansible_CN_Userdata" {
  description = "this path is for Ansible Cotrol node userdata"
  default     = "../Userdata's/Ansible_CN_userdata.sh"
}
variable "Ansible_MN_Tomcat" {
  description = "This path is for Ansible Managed Node userdata for tomcat"
  default     = "../Userdata's/Ansible_MN_tomcat_userdata.sh"
}

variable "Ansible_MN_Docker" {
  description = "This path is for Ansible Managed Node userdata for Docker "
  default     = "../Userdata's/Ansible_MN_Docker_userdata.sh"
}