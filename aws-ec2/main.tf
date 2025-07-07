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
    region = "apsoutheast-1"
  
}

resource "aws_instance" "myserver" {
    ami = "ami-0b8607d2721c94a77"
    instance_type = "t2.micro"
  
  tags = {
    Name = "sample-server"
  }
}