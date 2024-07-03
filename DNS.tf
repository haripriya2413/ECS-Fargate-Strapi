resource "aws_route53_record" "strapi" {
  zone_id = "Z06607023RJWXGXD2ZL6M"
  name    = "haripriyagh13.contentecho.in"
  type    = "A"

  alias {

    name                   = aws_lb.strapiLB.dns_name
    zone_id                = aws_lb.strapiLB.zone_id
    evaluate_target_health = true
  }
}
