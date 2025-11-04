module "fun" {
  source        = "../terraform-aws-instance1"
  ami_id        = var.ami_id
  instance_type = var.instance_type
  sg_ids        = var.sg_ids
  tags          = var.tags
}

output "public_ip" {
  value = module.fun.public_ip
}

output "private_ip" {
  value = module.fun.private_ip
}

output "id" {
  value = module.fun.instance_id
}
