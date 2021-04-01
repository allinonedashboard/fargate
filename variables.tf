#--------------------------------
# Common variables
#--------------------------------
variable "region" {
  type = string
}

#--------------------------------
# Tag variables
#--------------------------------
variable "service_tag" {
  type = string
}

variable "owner_tag" {
  type = string
}

variable "task_tag" {
  type = string
}

#--------------------------------
# Network variables
#--------------------------------
variable "vpc_cidr" {
  type = string
}
#--------------------------------
# ALB variables
#--------------------------------


#--------------------------------
# cluster variables
#--------------------------------
variable "cluster_name" {
  type = string
}





