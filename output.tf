output "vnet" {
  value = azurerm_virtual_network.vnet
}

output "nsg" {
  value = azurerm_network_security_group.vnet_nsg
}

output "nsg_association" {
  value = azurerm_subnet_network_security_group_association.nsg_association
}

output "subnets" {
  value = azurerm_subnet.subnet

  depends_on = [
    azurerm_subnet_route_table_association.rt_association,
  ]
}

output "asg_quarantine" {
  value = azurerm_application_security_group.quarantine
}

output "asg_internet_out" {
  value = azurerm_application_security_group.internet_out
}

output "asg_linux_customer_access" {
  value = azurerm_application_security_group.linux_customer_access
}

output "asg_on_prem_out" {
  value = azurerm_application_security_group.on_prem_out
}

output "asg_sql_server" {
  value = azurerm_application_security_group.sql_server
}

output "asg_web_server" {
  value = azurerm_application_security_group.web_server
}

output "asg_windows_customer_access" {
  value = azurerm_application_security_group.windows_customer_access
}
