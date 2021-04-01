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
# ALB variables
#--------------------------------
variable "app_port" {
  description = "Port exposed by the docker image to redirect traffic to"
  default     = 80
}

variable "health_check_path" {
  default = "/"
}