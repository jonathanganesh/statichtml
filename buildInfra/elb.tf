resource "aws_elb" "staticweb" {
  name = "staticweb"
  availability_zones = ["${var.availability_zone["primary"]}","${var.availability_zone["secondary"]}"],

  listener {
    instance_port = 80
    instance_protocol = "http"
    lb_port = 80
    lb_protocol = "http"
  }

  health_check {
    healthy_threshold = 2
    unhealthy_threshold = 2
    timeout = 3
    target = "TCP:80"
    interval = 30
  }
}
