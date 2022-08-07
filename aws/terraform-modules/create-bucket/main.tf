resource "aws_s3_bucket" "freshbckt" {
  bucket = "tfb1"

  tags = {
    Name = "tfb1"
  }
}

resource "aws_s3_bucket_acl" "s3_acl" {
  bucket = aws_s3_bucket.freshbckt.id
  acl    = "private"
}