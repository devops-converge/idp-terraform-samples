provider "aws" {
  region = "us-east-1"
}

terraform {
  backend "s3" {
    bucket         = "hha-gke-eks-terraform-state-prod-hhaexchange"
    key            = "idp"
    region         = "us-east-1"
    dynamodb_table = "hha-gke-eks-terraform-locking-prod"
    encrypt        = true
  }
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
