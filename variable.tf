variable "image_id" {
  type = string
}

variable "instance_type" {
  type = string
}

variable "availability_zone" {
  type = string
}

variable "key_pair" {
  type = string
}

variable "subnet_id" {
  type = string
}

variable "vpc_id" {
  type = string
}

variable "ebs_volume" {
  type = number
}

variable "ec2_tag" {
  type = string
}

variable "sg_tag" {
  type = string
}

variable "iam_role" {
  type = string
}

variable "ports" {
  type = list(number)
}
