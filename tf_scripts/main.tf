resource "aws_instance" "Jenkins_Server" {
  instance_type          = var.micro_instances
  availability_zone      = var.ZONE1
  ami                    = var.Ami_Ubuntu
  vpc_security_group_ids = [aws_security_group.Devops_Pro-SG.id]
  key_name               = var.key_name

  tags = {
    Name = "Jenkins_server"
  }
  user_data = file(var.Jenkins_Userdata)
}

#############################################################################

resource "aws_instance" "Nexus_Server" {
  instance_type          = var.medium_instances
  availability_zone      = var.ZONE1
  ami                    = var.Ami_Centos
  vpc_security_group_ids = [aws_security_group.Devops_Pro-SG.id]
  key_name               = var.key_name

  tags = {
    Name = "Nexus_server"
  }
  user_data = file(var.Nexus_Userdata)
}

############################################################################


resource "aws_instance" "Ansible-Server" {
  instance_type          = var.micro_instances
  availability_zone      = var.ZONE1
  ami                    = var.Ami_Amazon_linux
  vpc_security_group_ids = [aws_security_group.Devops_Pro-SG.id]
  key_name               = var.key_name

  tags = {
    Name = "Ansible-ControlNode"
  }
  user_data = file(var.Ansible_CN_Userdata)
}

#######################################################################################

resource "aws_instance" "Ansible-MN-Tomcat" {
  instance_type          = var.micro_instances
  availability_zone      = var.ZONE1
  ami                    = var.Ami_Amazon_linux
  vpc_security_group_ids = [aws_security_group.Devops_Pro-SG.id]
  key_name               = var.key_name

  tags = {
    Name = "Ansible-MN_Tomcat"
  }
  user_data = file(var.Ansible_MN_Tomcat)
}

#######################################################################################


resource "aws_instance" "Ansible-MN-Docker" {
  instance_type          = var.micro_instances
  availability_zone      = var.ZONE1
  ami                    = var.Ami_Amazon_linux
  vpc_security_group_ids = [aws_security_group.Devops_Pro-SG.id]
  key_name               = var.key_name

  tags = {
    Name = "Ansible-MN_Docker"
  }
  user_data = file(var.Ansible_MN_Docker)
}

#######################################################################################