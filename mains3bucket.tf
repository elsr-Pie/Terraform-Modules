resource "aws_s3_bucket" "devops-storage" {
  bucket = var.buck-name

  tags = {
    Name        = "Paps bucket"
    Environment = "Prod"
  }
}


resource "aws_s3_bucket_ownership_controls" "paps-oc" {
  bucket = aws_s3_bucket.devops-storage.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}

resource "aws_s3_bucket_acl" "paps-acl" {
  depends_on = [aws_s3_bucket_ownership_controls.paps-oc]

  bucket = aws_s3_bucket.devops-storage.id
  acl    = "private"
}
