variable "aws_region" {
  description = "The AWS region to deploy resources"
  type        = string
  default     = "us-east-1"
}

variable "vpc_id" {
  description = "The ID of the VPC where the ECS cluster will be deployed"    
  type        = string
  default     = "vpc-06f3b9a17927fefa2"
}

variable "subnet_ids" {
  description = "A list of subnet IDs where the ECS services will be deployed"
  type        = list(string)
  default     = ["subnet-0d25341a29cbc07a2","subnet-0da46f06268145220"]       
}

variable "cluster_name" {
  description = "The name of the ECS cluster"
  type        = string
  default     = "springboot-cluster"
}

variable "service_name" {
  description = "The name of the ECS service"
  type        = string
  default     = "sprinboot-service"
}

variable "container_port" {
  description = "The port on which the container will listen"
  type        = number
  default     = 8081
}

variable "desired_count" {
  description = "The number of desired tasks for the ECS service"
  type        = number
  default     = 2
}
