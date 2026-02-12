provider "aws" {
  region = "ap-south-1" 
}

resource "aws_s3_bucket" "my_test_bucket" {
  bucket = "my-devops-test-bucket-${random_id.id.hex}"
}

resource "random_id" "id" {
  byte_length = 4
}
