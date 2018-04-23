resource "aws_default_subnet" "default_ue1a" {
  availability_zone = "${var.availability_zone["primary"]}"
}

resource "aws_default_subnet" "default_ue1b" {
  availability_zone = "${var.availability_zone["secondary"]}"
}
