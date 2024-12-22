provider "aws" {
  region = "us-east-1" # Update this with your region
}

resource "aws_instance" "example" {
  ami           = "ami-0583d8c7a9c35822c" # Replace with your AMI ID
  instance_type = var.instance_type       # Use variable for instance type
  key_name      = "myfirst"
  tags = {
    Name = "DailyInstanceTypeChange"
  }
}

variable "instance_type" {
  description = "Instance type to set for the EC2 instance"
  type        = string
  default     = "t2.micro" # Default target instance type
}
