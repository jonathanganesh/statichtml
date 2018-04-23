resource "aws_autoscaling_group" "staticweb" {
  lifecycle {
    create_before_destroy = true
  }

  # interpolate the LC into the ASG name so it always forces an update
  name                      = "asg-${aws_launch_configuration.staticweb.name}"
  max_size                  = 5
  min_size                  = 2
  wait_for_elb_capacity     = 2
  desired_capacity          = 2
  launch_configuration      = "${aws_launch_configuration.staticweb.id}"
  load_balancers            = ["${aws_elb.staticweb.id}"]
  vpc_zone_identifier       = ["${aws_default_subnet.default_ue1a.id}", "${aws_default_subnet.default_ue1b.id}",]
}
