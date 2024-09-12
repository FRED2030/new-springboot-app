resource "aws_cloudwatch_log_group" "ecs_log_group" {
  name              = "/ecs/new-springboot-app"        
  retention_in_days = 30
}
