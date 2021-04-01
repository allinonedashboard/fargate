
# outputs.tf

output "vpc_network_id" {
  value = module.network.vpc_id
}

output "public_subnet_id" {
  value = module.network.public_subnet_id
}

output "private_subnet_id" {
  value = module.network.private_subnet_id
}

output "hostname" {
  value = module.alb.alb_hostname
}
output "ecs_role_arn" {
  value = module.iam.ecs_role_arn
}

output "ecs_tasks_ids"{
  value =module.alb.ecs_tasks_id
}