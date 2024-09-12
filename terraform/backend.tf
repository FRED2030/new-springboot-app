terraform {
  backend "s3" {
    bucket         = "springboot-ecs-app-s3-bucket"
    key            = "terraform_statefile"
    region         = "us-east-1"
    dynamodb_table = "springboot-app-project-DynamoDB"
  }
}
