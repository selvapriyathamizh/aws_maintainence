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

resource "aws_ec2_instance_state" "ec2_state" {
  instance_id = aws_instance.AAP.id
  state       = "var.instance_state"
}

variable "instance_type" {
  description = "Instance type to set for the EC2 instance"
  type        = string
  default     = "t2.medium" # Default target instance type
}
variable "instance_state" {
  description = "Instance type to set for the EC2 instance"
  type        = string
  default     = "stopped" # Default target instance type
}
