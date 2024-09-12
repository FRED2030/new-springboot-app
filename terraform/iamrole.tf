resource "aws_iam_role_policy" "jenkins_cloudwatch_logs_policy" {
  name   = "jenkins-cloudwatch-logs-policy"
  role   = "Jenkins-role"  # Replace with the actual role name if different
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect   = "Allow"
        Action   = "logs:ListTagsForResource"
        Resource = "arn:aws:logs:us-east-1:905418339917:log-group:/ecs/new-springboot-app"
      }
    ]
  })
}
