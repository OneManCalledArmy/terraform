provider "aws" {
  shared_config_files      = ["C:/Users/Jaca/terraform/.aws/conf"]
  shared_credentials_files = ["C:/Users/Jaca/terraform/.aws/creds"]
#   profile                  = "customprofile"
}

resource "aws_s3_bucket" "b" {
  bucket = "tf-bucket"

  tags = {
    Name = "TF_bucket"
  }
}

resource "aws_s3_bucket_acl" "example" {
  bucket = aws_s3_bucket.b.id
  acl    = "public-read"
}