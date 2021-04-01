output "ecs_tasks_id" {
  value = aws_security_group.ecs_tasks[*].id
}

output "alb_target_grp_id" {
  value = aws_alb_target_group.app.id
}

output "alb_hostname" {
  value = aws_alb.main.dns_name
}