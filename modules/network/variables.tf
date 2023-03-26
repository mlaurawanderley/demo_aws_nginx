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

variable "cidr_block_vpc" {
  type        = string
  description = "CIDR VPC"
}

variable "cidr_block_snet_pub" {
  type        = string
  description = "CIDR Snet Public"
}

variable "cidr_block_snet_priv" {
  type        = string
  description = "CIDR Snet Private"
}

variable "az_snet_pub" {
  type        = string
  description = "Availability Zone Snet Public"
}

variable "az_snet_priv" {
  type        = string
  description = "Availability Zone Snet Private"
}

variable "Env" {
  type        = string
  description = "Tag Environment"
}