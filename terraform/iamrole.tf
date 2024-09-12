resource "aws_iam_role" "jenkins_role" {
  name = "Jenkins-role"
  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect = "Allow"
        Principal = {
          Service = "ec2.amazonaws.com"
        }
        Action = "sts:AssumeRole"
      }
    ]
  })
}

resource "aws_iam_role_policy" "jenkins_cloudwatch_logs_policy" {
  name   = "jenkins-cloudwatch-logs-policy"
  role   = aws_iam_role.jenkins_role.id
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
