resource "aws_ecs_task_definition" "bd-task" {
  family                = "webapp-service"
  container_definitions = "${file("./container_definitions/service.json.tpl")}"
  execution_role_arn    = "arn:aws:iam::393466549228:role/ecs-task-role"
  network_mode          = "bridge"
}

resource "aws_ecs_task_definition" "migration-task" {
  family                = "webapp-migration"
  container_definitions = "${file("./container_definitions/app-migrate.json.tpl")}"
  execution_role_arn    = "arn:aws:iam::393466549228:role/ecs-task-role"
  network_mode          = "bridge"
}
