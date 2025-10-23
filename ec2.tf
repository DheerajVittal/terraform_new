resource "aws_instance" "test" {
  ami           = var.ami_id          # Replace with a valid AMI ID for your region
  instance_type = var.instance_type
  #key_name      = "my-key-pair" # Replace with your SSH key pair name
  #subnet_id     = var.subnet_id # Replace with your Subnet ID or a variable
  vpc_security_group_ids = [aws_security_group.allow_all.id]
  tags = var.ec2_tags
}

resource "aws_security_group" "allow_all" {
  name = var.sg_name

 egress {
        from_port   = var.egress_from_port
        to_port     = var.egress_to_port
        protocol    = var.protocol
        cidr_blocks = var.cidr
      }

 ingress {
        from_port   = var.ingress_from_port
        to_port     = var.ingress_to_port
        protocol    = var.protocol # Allow all protocols
        cidr_blocks = var.cidr
      }
tags = {
  Name = "allow-all"
}
}
