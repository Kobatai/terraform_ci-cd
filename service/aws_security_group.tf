resource "aws_security_group" "instance" {
  name        = "instance"
  description = "instance sg"
  # vpc_id      = "${data.terraform_remote_state.vpc.outputs.vpc_id}"
  vpc_id = "vpc-00fbb1a3ff5584554"
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_security_group" "alb" {
  name        = "bd-laravel-alb"
  description = "http and https"
  # vpc_id      = "${data.terraform_remote_state.vpc.outputs.vpc_id}"
  vpc_id = "vpc-00fbb1a3ff5584554"
  ingress {
    from_port = 80
    to_port   = 80
    protocol  = "TCP"
    cidr_blocks = [
      "0.0.0.0/0",
    ]
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
resource "aws_security_group" "db" {
  name        = "bd-db"
  description = "DB"
  # vpc_id      = "${data.terraform_remote_state.vpc.vpc_id}"
  vpc_id = "vpc-00fbb1a3ff5584554"
  ingress {
    from_port = 3306
    to_port   = 3306
    protocol  = "tcp"

    security_groups = [
      "${aws_security_group.instance.id}",
    ]
  }
}
