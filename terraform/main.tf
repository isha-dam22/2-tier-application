module "resource_group" {
  source   = "./modules/resource_group"
  rg_name  = var.rg_name
  location = var.location
}

module "network" {
  source        = "./modules/network"
  rg_name       = module.resource_group.rg_name
  location      = var.location
  vnet_name     = var.vnet_name
  address_space = var.address_space
  web_subnet    = var.web_subnet
  db_subnet     = var.db_subnet
}

module "webapp" {
  source              = "./modules/webapp"
  rg_name             = module.resource_group.rg_name
  location            = var.location
  app_service_plan    = var.app_service_plan
  webapp_name         = var.webapp_name
  subnet_id           = module.network.web_subnet_id
}

module "database" {
  source              = "./modules/database"
  rg_name             = module.resource_group.rg_name
  location            = var.location
  sql_server_name     = var.sql_server_name
  sql_database_name   = var.sql_database_name
  admin_username      = var.admin_username
  admin_password      = var.admin_password
 
}
