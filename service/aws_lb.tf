resource "aws_lb" "lb" {
  name               = "bd-lb"
  internal           = false
  load_balancer_type = "application"
  security_groups = [
    "${aws_security_group.alb.id}",
  ]
  subnets = [
    # "${data.terraform_remote_state.vpc.outputs.public_subnet_1_id}",
    "subnet-0cb6da27bad9d0792",
    # "${data.terraform_remote_state.vpc.outputs.public_subnet_2_id}",
    "subnet-036e54eaf489f4ae0",
  ]
}
