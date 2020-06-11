resource "aws_ebs_volume" "task_1" {
  availability_zone = "ap-south-1a"
  size              = 1

  tags = {
    Name = "PD_Storage"
  }
}