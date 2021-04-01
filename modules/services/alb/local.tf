locals {
  # Common tags to be assigned to all resources
  common_tags = {
    Service = var.service_tag
    Owner   = var.owner_tag
    Task    = var.task_tag
  }
}

