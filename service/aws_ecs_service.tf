resource "aws_ecs_service" "webapp-service" {
  name            = "webapp-service"
  cluster         = aws_ecs_cluster.bd-ecs-cluster.id
  task_definition = aws_ecs_task_definition.bd-task.arn
  desired_count   = 1
  launch_type     = "EC2"
}
