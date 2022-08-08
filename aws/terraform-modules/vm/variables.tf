variable "ami" {
  description = "ID of AMI to use for the instance"
  type        = string
  default     = "ami-065deacbcaac64cf2"
}

variable "instance_size" {
  description = "Instance size"
  type        = string
  default     = "t2.micro"
}

variable "region" {
  description = "AWS region"
  type        = string
  default     = "eu-central-1"
}

variable "number_of_ec2" {
    description = "Number of EC2 instances to create"
    type = number
    default = 1
}