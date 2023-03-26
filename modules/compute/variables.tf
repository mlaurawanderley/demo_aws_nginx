variable "instance_type" {
  type        = string
  description = "Instance Type"
}

variable "snet_pub_name" {
  type        = string
  description = "Snet Public Name"
}

variable "sg_name" {
  type        = string
  description = "Security Group Name"
}

variable "instance_name" {
  type        = string
  description = "Instance Name"
}

variable "Env" {
  type        = string
  description = "Tag Environment"
}