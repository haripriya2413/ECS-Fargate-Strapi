resource "aws_lb" "strapiLB" {
  name               = "strapi-lb"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.strapiSG.id]
  subnets            = [aws_subnet.subnet1.id, aws_subnet.subnet2.id]
}


resource "aws_lb_listener" "Listener" {
  load_balancer_arn = aws_lb.strapiLB.arn
  port              = "80"
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.strapiTG.arn
  }
}
