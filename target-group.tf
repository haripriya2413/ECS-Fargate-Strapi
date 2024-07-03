resource "aws_lb_target_group" "strapiTG" {
  name        = "strapiTG"
  port        = "80"
  protocol    = "HTTP"
  target_type = "ip"
  vpc_id      = aws_vpc.strapivpc.id

  tags = {
    Name = "TG"
  }
}