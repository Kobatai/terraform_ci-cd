resource "aws_ecs_task_definition" "bd-task" {
  family                = "webapp-service"
  container_definitions = "${data.template_file.service_container_definition.rendered}"
  task_role_arn         = "arn:aws:iam::393466549228:role/ecs-task-role"
  network_mode          = "bridge"
}
