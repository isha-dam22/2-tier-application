location        = "East US"
rg_name         = "rg-2tier-vnet"

vnet_name       = "vnet-2tier"
address_space   = ["10.0.0.0/16"]
web_subnet      = ["10.0.1.0/24"]
db_subnet       = ["10.0.2.0/24"]

app_service_plan = "asp-2tier"
webapp_name      = "webapp2tiervnet123"

sql_server_name   = "sqlserver2tiervnet123"
sql_database_name = "appdb"

admin_username   = "sqladmin"
admin_password   = "StrongPassword@123"
