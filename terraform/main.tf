provider "aws" {
  region = "us-east-1"
}

variable "bucketName" {
  type = string
  default = "idp-test-victor1"
}

resource "aws_s3_bucket" "example_bucket" {
  bucket = var.bucketName
  acl    = "private"

  tags = {
    Name        = "HarnessDemoBucket"
    Environment = "Dev"
  }
}
