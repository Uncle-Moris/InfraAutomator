variable "aws_region" {
  description = "AWS Region where resources are created"
  type        = string
  default     = "eu-central-1"
}

variable "instance_type" {
  description = "The type of instance to be created"
  type        = string
  default     = "t2.micro"
}

variable "security_group_id" {
  description = "ID of the security group to associate with the instance"
  type        = string
  default     = "sg-0f74dce9d5eb2d9d2"
}

variable "ami_id" {
  description = "ID of the AMI to use for the EC2 instance"
  type        = string
  default     = "ami-0e04bcbe83a83792e"
}
