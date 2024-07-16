output "resource_group_id" {
  value = azurerm_resource_group.rg.id
}

output "cost_center" {
  value = var.cost_center
}