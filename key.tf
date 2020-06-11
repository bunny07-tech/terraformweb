resource "aws_key_pair" "deployer" {
  key_name   = "petro-key"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAABJQAAAQEAu7lJFobQu2VYDsBPXrdFdQwPV8YrukMhBPq0qA7cn2vebG8huXTGXcJXA4xDkxFj8wLnMJQZBXpaWRjUaxYQLSOn2R0w+nAoPwPybijeReuuJ/JhPx3+dvdVW/SzTojdwmZQFRT4/7jA4vrTLeU2Wywqe+9gCrZqwWI9TcQquO0r5bbtXXn0cBv6lcPeajOncQFleEBvWV5h7z1zMZEZm7HG5S3TDTE5w//ND+Nm9TDrEwFVk4GsePQn1ahA+HYAwYuGnh0oDmK06R7Gq9Ij+7uBi/kUeuMOCyo1xkM0IB3mqTU+9bsJATq0197ncymQpx1a3hghRr7KakIILaYosw== rsa-key-20200611"
}