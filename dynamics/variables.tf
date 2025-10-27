variable "ingress_ports" {
    type    = list(number)
    default = [22,3306,80,8080,22017,6379]
}