resource "aws_instance" "task1" {
  ami           = "ami-0447a12f28fddb066"
  instance_type = "t2.micro"
  availability_zone = "ap-south-1a"
  key_name      = "petro-key"
  security_groups = [ "task1-securitygroup" ]

  
  connection {
    type     = "ssh"
    user     = "ec2-user"
    private_key = tls_private_key.task_keypair.private_key_pem
    host     = aws_instance.task_instance.public_ip
  }

  provisioner "remote-exec" {
    inline = [
      "sudo yum install httpd git -y",
      "sudo systemctl restart httpd",
      "sudo systemctl enable httpd",
    ]
  }
 tags = {
    Name = "petroterraformOS"
  }
}
