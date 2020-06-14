resource "aws_ebs_volume" "task_1" {
  availability_zone = "ap-south-1a"
  size              = 1
esource "aws_volume_attachment" "task_attach" {
  device_name = "/dev/sdh"
  volume_id   = aws_ebs_volume.task_harddrive.id
  instance_id = aws_instance.task_instance.id
  force_detach = true
}

resource "null_resource" "partition"  {

depends_on = [
    aws_volume_attachment.task_attach
  ]


  connection {
    type     = "ssh"
    user     = "ec2-user"
    private_key = tls_private_key.task_keypair.private_key_pem
    host     = aws_instance.task_instance.public_ip
  }

provisioner "remote-exec" {
    inline = [
      "sudo mkfs.ext4  /dev/xvdh",
      "sudo mount  /dev/xvdh  /var/www/html",
      "sudo rm -rf /var/www/html/*",
      "sudo git clone https://github.com/bunny07-tech/terraformweb.git /var/www/html"
    ]
  }
}
  tags = {
    Name = "PD_Storage"
  }
}
