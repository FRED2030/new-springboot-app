terraform {
  backend "s3" {
    bucket         = "springboot-app-ecs-bucket"
    key            = "terraform_statefile"
    region         = "us-east-1"
    dynamodb_table = "springboot-app-dynamoDB"
  }
}
