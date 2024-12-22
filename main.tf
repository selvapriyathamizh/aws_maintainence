provider "aws" {
  region = "us-east-1" # Update this with your region
}

resource "aws_instance" "AAP" {
  ami           = "ami-01816d07b1128cd2d" # Replace with your AMI ID
  instance_type = var.instance_type       # Use variable for instance type
  key_name      = "myfirst"
  tags = {
    Name = "test_upgrade_new"
  }
}

variable "instance_type" {
  description = "Instance type to set for the EC2 instance"
  type        = string
  default     = "t2.micro" # Default target instance type
}

