variable "policy_name" {
    type = string
    description = "Policiy for Landing Zone"
    default = "iam_policy_lz"
}

variable "role_ec2_profile_name" {
    type = string
    description = "Role for EC2 instance profile"
    default = "iam_role_ec2_profile"
}

variable "iam_instance_profile_name" {
    type = string
    description = "Name of the IAM instance profile"
    default = "iam_instance_profile"
}

variable "vpc_name" {
  type        = string
  description = "VPC Name"
  default     = "vpc-demo-cloud"
}

variable "snet_pub_name" {
  type        = string
  description = "Snet Public Name"
  default     = "snet_pub"
}

variable "snet_priv_name" {
  type        = string
  description = "Snet Private Name"
  default     = "snet_priv"
}

variable "cidr_block_vpc" {
  type        = string
  description = "CIDR VPC"
  default     = "10.0.0.0/16"
}

variable "cidr_block_snet_pub" {
  type        = string
  description = "CIDR Snet Public"
  default     = "10.0.1.0/24"
}

variable "cidr_block_snet_priv" {
  type        = string
  description = "CIDR Snet Private"
  default     = "10.0.2.0/24"
}

variable "az_snet_pub" {
  type        = string
  description = "Availability Zone Snet Public"
  default     = "us-east-1a"
}

variable "az_snet_priv" {
  type        = string
  description = "Availability Zone Snet Private"
  default     = "us-east-1b"
}

variable "Env" {
  type        = string
  description = "Tag Environment"
  default     = "LandingZone"

}

variable "sg_name" {
  type        = string
  description = "Security Group Name"
  default     = "sg_demo_cloud"
}

variable "instance_type" {
  type        = string
  description = "Instance Type"
  default     = "t2.micro"
}

variable "instance_name" {
  type        = string
  description = "Instance Name"
  default     = "instance_demo_cloud"
}

variable "rt_name" {
  type        = string
  description = "Route table Name"
  default     = "rt_demo_cloud"
}

variable "igw_name" {
  type        = string
  description = "Internet Gateway Name"
  default     = "igw_demo_cloud" 
}