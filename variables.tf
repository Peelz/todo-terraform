# $ terraform apply -v="region=<your-region>"
variable "region" {
  default = "ap-southeast-1"
}


# use case
# ami = var.amis[var.region]
# also like $ terraform apply -var 'amis={ us-east-1 = "foo", us-west-2 = "bar" }'

variable "amis" {
  type = map(string)
  default = {
    us-east-1      = "foo"
    ap-southeast-1 = "bar"
  }
}
