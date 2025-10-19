resource "aws_instance" "testing" {
  ami           = "ami-09c813fb71547fc4f" # Replace with a valid AMI ID for your region
  instance_type = "t3.micro"
  #key_name      = "my-key-pair" # Replace with your SSH key pair name
  #subnet_id     = var.subnet_id # Replace with your Subnet ID or a variable
  vpc_security_group_ids = [aws_security_group.allow_all.id]
  tags = {
    Name = "testing1"
    Terraform = "true"
  }
}

resource "aws_security_group" "allow_all" {
  name = "allow all"


 egress {
        from_port   = 0
        to_port     = 0
        protocol    = "-1" # Allow all protocols
        cidr_blocks = ["0.0.0.0/0"]
      }

 ingress {
        from_port   = 0
        to_port     = 0
        protocol    = "-1" # Allow all protocols
        cidr_blocks = ["0.0.0.0/0"]
      }
tags = {
  Name = "allow-all"
}
}
