resource "aws_route53_record" "strapi" {
  zone_id = var.route53_zone_id
  name    = var.domain_name
  type    = "A"

  alias {

    name                   = aws_lb.strapiLB.dns_name
    zone_id                = aws_lb.strapiLB.zone_id
    evaluate_target_health = true
  }
}
