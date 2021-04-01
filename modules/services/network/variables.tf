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
variable "az_count" {
  description = "Number of AZs to cover in a given region"
  default     = "2"
}
#--------------------------------
# App port
#--------------------------------
variable "app_port" {
  description = "Port exposed by the docker image to redirect traffic to"
  default     = 80
}