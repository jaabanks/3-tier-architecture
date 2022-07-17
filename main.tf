module "autoscaling" {
  source      = "./modules/autoscaling" #A
  namespace   = var.namespace           #B
  ssh_keypair = var.ssh_keypair         #A

  vpc       = module.networking.vpc     #A
  sg        = module.networking.sg      #A
  db_config = module.database.db_config #A

}
module "networking" {
  source    = "./modules/networking" #A
  namespace = var.namespace          #B
}
