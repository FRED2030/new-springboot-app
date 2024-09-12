resource "aws_cloudwatch_log_group" "ecs_log_group" {
  name              = "/ecs/springboot-app"        
  retention_in_days = 30
}
