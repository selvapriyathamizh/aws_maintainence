provider "aws" {
  region = "us-east-1" # Update this with your region
}

resource "aws_instance" "example" {
  ami           = "ami-0c55b159cbfafe1f0" # Replace with your AMI ID
  instance_type = var.instance_type       # Use variable for instance type
  tags = {
    Name = "DailyInstanceTypeChange"
  }
}

variable "instance_type" {
  description = "Instance type to set for the EC2 instance"
  type        = string
}
