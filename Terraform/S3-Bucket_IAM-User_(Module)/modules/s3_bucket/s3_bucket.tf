resource "aws_s3_bucket" "s3" {
  bucket = var.BUCKETNAME

  tags = {
    Name = var.BUCKETNAME
  }
}

# Enable versioning for the S3 bucket
resource "aws_s3_bucket_versioning" "versioning_bucket1" {
  bucket = aws_s3_bucket.s3.id
  versioning_configuration {
    status = "Enabled"
  }

}

# Configure ownership controls for the S3 bucket
resource "aws_s3_bucket_ownership_controls" "control1" {
  bucket = aws_s3_bucket.s3.id

  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}
