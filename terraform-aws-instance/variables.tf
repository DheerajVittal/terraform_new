variable "ami_id" {
  type        = string
  default = "ami-09c813fb71547fc4f"
  description = "this is the ami id used for creating instance"
}

variable "instance_type" {
    type = string
    description = "Instance type used for creating EC2 instance"
    validation {
      condition = contains( ["t3.micro", "t3.small", "t3.medium"], var.instance_type)
      error_message = "please select either t3.micro or small or medium"
    }
}

variable "sg_ids" {
  type = list
  default = ["sg-0295f560bfb5e1f7e"]
}

#optional
variable "tags" {
   type = map
   default = {}
}

