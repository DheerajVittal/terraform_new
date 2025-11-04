variable "ami_id" {
  default  = "ami-09c813fb71547fc4f"
}

variable "instance_type" {
    default = "t3.micro"
}

variable "sg_ids" {
 default = ["sg-0295f560bfb5e1f7e"]
}

variable "tags" {
   default = {
    Name = "modules.fun"
   }
}