
####
# DNS Hosted Zone
####

## Create the hosted zone for DNS
resource "aws_route53_zone" "dev" {
  name = "external-${var.environment}.reecedev.us"

  tags = {
    Environment = var.environment
  }
}

