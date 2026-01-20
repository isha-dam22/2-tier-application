variable "location" {}
variable "rg_name" {}

variable "vnet_name" {}
variable "address_space" {}
variable "web_subnet" {}
variable "db_subnet" {}

variable "app_service_plan" {}
variable "webapp_name" {}

variable "sql_server_name" {}
variable "sql_database_name" {}
variable "admin_username" {}
variable "admin_password" {
  sensitive = true
}
