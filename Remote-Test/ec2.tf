# Define the EC2 instance resource
resource "aws_instance" "my_ec2_instance" {
  count = 3
  ami           = "ami-09c813fb71547fc4f" # Replace with a valid AMI ID for your region
  instance_type = "t3.micro"             # Choose your desired instance type
 #key_name      = "my-key-pair"          # Replace with your existing EC2 key pair name
  vpc_security_group_ids = ["sg-0295f560bfb5e1f7e"]
  tags = {
    Name = "MyTerraformEC2-${count.index}"
  }
}

# resource "aws_security_group" "DevOps-SG" {
#   name        = "DevOps-SG"


#   ingress {
#     description = "DevOps-SG-Test"
#     from_port   = 0
#     to_port     = 0
#     protocol    = "-1" # Allow all protocols
#     cidr_blocks = ["0.0.0.0/0"] # Allow from anywhere
#   }

#   egress {
#     description = "DevOps-SG-Test"
#     from_port   = 0
#     to_port     = 0
#     protocol    = "-1" # Allow all protocols
#     cidr_blocks = ["0.0.0.0/0"] # Allow from anywhere
#   }
#   tags = {
#     Name = "DevOps-SG"
#   }
# }