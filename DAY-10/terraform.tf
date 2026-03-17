provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "my_ec2" {
  ami           = "ami-0f58b397bc5c1f2e8"
  instance_type = "t3.micro"

  tags = {
    Name = "MyTerraformServer"
  }
}
resource "aws_s3_bucket" "my_bucket" {
  bucket = "rashpal-terraform-bucket-12345"

  tags = {
    Name = "MyTerraformBucket"
  }
}
          
