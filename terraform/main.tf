provider "aws" {
  region = "us-east-1"  # Update to your preferred AWS region
}

resource "aws_instance" "web" {
  ami           = "ami-01f5a0b78d6089704" # Ensure this AMI is valid
  instance_type = "t2.micro"

  tags = {
    Name = "Terraform-GitHubActions"
  }
}

