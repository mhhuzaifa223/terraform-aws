variable "aws_region" {
    description = "AWS region to deploy resources"
    type = string
    default = "us-east-1"
}
variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t3.small"
}

variable "project_name" {
  description = "Name prefix for all resources"
  type        = string
  default     = "petclinic"
}

variable "ami_id" {
  description = "Amazon Linux 2023 AMI ID"
  type        = string
  default     = "ami-08f44e8eca9095668"
}

variable "key_pair_name" {
  description = "Name of existing AWS key pair for SSH access"
  type        = string
}