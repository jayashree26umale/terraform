provider "aws" {
    region="us-east-1"
}
resource "aws_s3_bucket" "s3" {
  bucket = "cloud7-placesapp-webpages-bucket"
  acl    = "public-read"

  tags = {
    Name        = "cloud7-placesapp-webpages-bucket"
    Environment = "Dev"
  }
}
resource "aws_s3_bucket" "s3a" {
  bucket = "cloud7-placesapp-images-bucket"
  acl    = "private"

  tags = {
    Name        = "cloud7-placesapp-images-bucket"
    Environment = "Dev"
  }
}
resource "aws_s3_bucket" "s3b" {
  bucket = "cloud7-placesapp-user-bucket"
  acl    = "private"

  tags = {
    Name        = "cloud7-placesapp-user-bucket"
    Environment = "Dev"
  }
}