resource "aws_ecs_cluster" "strapiECS" {
  name = "Priya-Strapi-app"
  tags = {
    name = "priya-strapi-app"
  }
}
