variable "vpc_name" {
  type        = string
  description = "VPC Name"
}

variable "snet_pub_name" {
  type        = string
  description = "Snet Public Name"
}

variable "snet_priv_name" {
  type        = string
  description = "Snet Private Name"
}

variable "Env" {
  type        = string
  description = "Tag Environment"
}

variable "rt_name" {
  type        = string
  description = "Route table Name"
}