variable "ami_id" {
  type    = string
  default = "ami-09c813fb71547fc4f"
}

variable "instance_type" {
  type = string
  validation {
    condition     = contains(["t3.micro", "t3.small", "t3.medium"], var.instance_type)
    error_message = "please select either t3.micro, small, medium"
  }
}
variable "sg_ids" {
  type    = list(any)
  default = ["sg-0295f560bfb5e1f7e"]
}

#optional
variable "tags" {
  type    = map(any)
  default = {}
}


