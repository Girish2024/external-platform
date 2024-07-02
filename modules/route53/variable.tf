variable "environment" {
  type        = string
  description = "Execution environment"
  default     = "dev"
}

variable "root_zone_id" {
  type        = string
  description = "The hosted zone id of the load balancer and dns records"
}


variable "domain" {
  type        = string
  description = "eg: reecedev.us for the dev env"
}

