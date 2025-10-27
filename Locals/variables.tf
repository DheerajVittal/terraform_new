variable "project" {
    default = "roboshop"
}

variable "environment" {
    default = "dev"  
}

variable "ami_id" {
  type    = string
  default = "ami-09c813fb71547fc4f"
}

variable "instance_type" {
  type    = string
  default = "t3.micro"
}

variable "common_tags" {
  type = map
  default = {
    name = "terraform-demo"
    terraform = "true"
    project = "roboshop"
    environment = "dev"
 }
}

variable "sg_name" {
  type = string
  default = "allow-all"
  description = "Security group name to attach EC2 instance"
}

variable "cidr" {
  type = list 
  default = ["0.0.0.0/0"]
}

variable "ingress_from_port" {
    default = 0
}

variable "ingress_to_port" {
    default = 0
}

variable "egress_from_port" {
  description = "Starting port for egress traffic"
  type        = number
  default     = 0
}

variable "egress_to_port" {
  description = "Ending port for egress traffic"
  type        = number
  default     = 0
}

variable "protocol" {
  description = "Protocol for egress"
  type        = string
  default     = "-1" # -1 means all protocols
}

