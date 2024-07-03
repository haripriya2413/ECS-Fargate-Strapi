variable "docker_image" {
  description = "The Docker image for the Strapi application"
  type        = string
}

variable "route53_zone_id" {
  description = "The Route 53 hosted zone ID where the DNS records will be created"
  type        = string
}

variable "domain_name" {
  description = "The domain name for the Strapi application "
  type        = string
}

variable "aws_region" {
  description = "The AWS region to deploy the resources in"
  type        = string
  default     = "us-east-2"
}
