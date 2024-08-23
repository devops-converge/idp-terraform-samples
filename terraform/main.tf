provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "example_bucket" {
  bucket = "your-unique-bucket-name-harness"
  acl    = "private"

  tags = {
    Name        = "HarnessDemoBucket"
    Environment = "Dev"
  }
}
