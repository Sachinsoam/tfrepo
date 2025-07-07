terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "5.54.1"
    }
  }
}

#configure the aws
provider "aws" {
    region = "ap-southeast-1"
}

resource "aws_s3_bucket" "demo-s3-bucket" {
    bucket = "ssoam-demo12345"  
     
}