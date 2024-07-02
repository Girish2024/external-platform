##################################
#  Route53                       #
##################################
## This module has to be instantiated after the alb-ingress module
## After alb-ingress creates the load balancer, pass the root zone and load balancer arn here
## The root zone is being managed outside terraform
module "route53" {
  source                 = "../../modules/route53"
  environment            = local.environment
  root_zone_id           = "Z09662621LWH3VC84LW8I"
  domain                 = "external-${local.environment}.reecedev.us"
}


##################################
#  ACM                           #
##################################
module "certificates" {
  source                    = "../../modules/certificates"
  environment               = local.environment
  domain                    = "reecedev.us"
  subject_alternative_names = ["*.reecedev.us", "*.external-dev.reecedev.us"]
}