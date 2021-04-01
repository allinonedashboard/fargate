variable "vpc_network_id" {
  type        = string
  description = "The vpc id of the network"
}

variable "private_subnet_id" {
  type        = list(string)
  description = "The private id of the network"
}

variable "ecs_role_id_arn" {
  type        = string
  description = "The private id of the network"
}
