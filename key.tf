resource "tls_private_key" "t1_key" {             //key generation 
  algorithm = "RSA"
}


resource "local_file" "t1_privatekey" {
    content     = tls_private_key.t1_key.private_key_pem
    filename = "petro-key.pem"
    file_permission = 0400                             
}


resource "aws_key_pair" "t1_key"{                 
	key_name= "petro-key"
	public_key = tls_private_key.t1_key.public_key_openssh
}
