variable "aws_region" {
  default = "us-east-1"
}

variable "key_name" {
  default = ""
}

variable "availability_zone" {
  default = {
    "primary"= "us-east-1a",
    "secondary"= "us-east-1b"
  }
}

variable "instance_type" {
  default = "t1.micro"
}

variable "ami" {
}
