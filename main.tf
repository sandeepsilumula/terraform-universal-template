module "networking" {
  source               = "./modules/networking"
  environment          = var.environment
  vpc_cidr             = var.vpc_cidr
  public_subnet_cidrs  = var.public_subnet_cidrs
  private_subnet_cidrs = var.private_subnet_cidrs
  availability_zones   = var.availability_zones
}

module "security" {
  source      = "./modules/security"
  environment = var.environment
  vpc_id      = module.networking.vpc_id
}

module "compute" {
  source            = "./modules/compute"
  environment       = var.environment
  instance_type     = var.instance_type
  vpc_id            = module.networking.vpc_id
  # We deploy to the PUBLIC subnet to avoid costly NAT Gateway charges (Free Tier Safe)
  subnet_id         = module.networking.public_subnet_ids[0] 
  security_group_id = module.security.app_sg_id
}