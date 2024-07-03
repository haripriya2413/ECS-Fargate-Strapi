output "aws_instance_public_ip" {
  value = aws_route53_record.strapi.records


}

