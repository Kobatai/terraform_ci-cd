resource "aws_ecr_repository" "bd-image" {
  name = "bd-image"
}

resource "aws_ecr_repository" "nginx" {
  name = "nginx"
}
