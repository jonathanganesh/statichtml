resource "aws_launch_configuration" "staticweb" {
    lifecycle { create_before_destroy = true }

    image_id = "${var.ami}"
    instance_type = "t2.micro"

    # Our Security group to allow HTTP and SSH access
    security_groups = ["${aws_security_group.staticweb.id}"]
}
