variable "region" {
  description = "AWS region"
  type        = string
  #default     = eu-west-3
}

variable "vpc_cidr" {
  description = "vpc_cidr"
  type        = string
  #default     = "172.16.0.0/16"
}

variable "pub_sub1_cidr_block" {
  description = "Public subnet 1"
  type        = string
}