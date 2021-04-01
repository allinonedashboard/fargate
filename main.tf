provider "aws" {
  region = var.region
}

module "network" {
  source         = "./modules/services/network"
  region         = var.region
  vpc_cidr       = var.vpc_cidr
  service_tag    = var.service_tag
  owner_tag      = var.owner_tag
  task_tag       = var.task_tag
}

module "iam" {
  source      = "./modules/services/iam"
  region      = var.region
  service_tag = var.service_tag
  owner_tag   = var.owner_tag
  task_tag    = var.task_tag
  depends_on = [
    module.network
  ]
}

module "alb" {
  source             = "./modules/services/alb"
  service_tag        = var.service_tag
  owner_tag          = var.owner_tag
  task_tag           = var.task_tag
  region             = var.region
  vpc_network_id     = module.network.vpc_id
  public_subnet_id   = module.network.public_subnet_id
  depends_on = [
    module.network
  ]
}


module "cluster" {
  source                             = "./modules/services/cluster"
  service_tag                        = var.service_tag
  owner_tag                          = var.owner_tag
  task_tag                           = var.task_tag
  region                             = var.region
  vpc_network_id                     = module.network.vpc_id
  ecs_role_id_arn                       = module.iam.ecs_role_arn
  ecs_task_id                         = module.alb.ecs_tasks_id
  target_grp_id                         =module.alb.alb_target_grp_id
  cluster_name                       = var.cluster_name
  private_subnet_id                 = module.network.private_subnet_id

  depends_on = [
    module.iam,
    module.alb
  ]
}