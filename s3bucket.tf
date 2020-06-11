resource "aws_s3_bucket"  "zombiebucket" {
  bucket = "petrobucket1211"
  acl = "public-read"
  versioning {
    enabled = true
  }

  tags = {
    Name = "webbucket"
  }
}