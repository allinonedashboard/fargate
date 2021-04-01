variable vpc_network_id {
  type        = string
  description = "The vpc id of the network"
}

variable public_subnet_id {
  type        = list(string)
  description = "The vpc id of the network"
}
