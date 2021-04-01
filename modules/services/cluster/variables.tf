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
# ECS  variables
#--------------------------------
variable "app_port" {
  description = "Port exposed by the docker image to redirect traffic to"
  default     = 80
}


variable "cluster_name" {
  type = string
}

variable "fargate_cpu" {
  description = "Fargate instance CPU units to provision (1 vCPU = 1024 CPU units)"
  default     = "1024"
}

variable "fargate_memory" {
  description = "Fargate instance memory to provision (in MiB)"
  default     = "2048"
}

variable "app_image" {
  description = "Docker image to run in the ECS cluster"
  default     = "nginx:latest"
}

variable "app_count" {
  description = "Number of docker containers to run"
  default     = 3
}

variable "ecs_task_id" {
  description = "ecs task ids"
  type = list(string)
}

variable "target_grp_id" {
  type = string
}