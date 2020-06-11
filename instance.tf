resource "aws_instance" "task1" {
  ami           = "ami-0447a12f28fddb066"
  instance_type = "t2.micro"
  availability_zone = "ap-south-1a"
  key_name      = "petro-key"
  security_groups = [ "task1-securitygroup" ]

 tags = {
    Name = "petroterraformOS"
  }
}